import 'package:isar/isar.dart';
import 'package:permission_analyzer_gui/common/common.dart';
import 'package:permission_analyzer_gui/data/data.dart';

part 'network_connection.g.dart';

abstract class INetworkConnection {

  INetworkEndpoint get endpoint;
  List<String> get ips;
  List<int> get ports;
  List<String> get protocols;
  List<String> get serverNames;
  bool get hasServerName => serverNames.isNotEmpty;
  String get serverNamesString => serverNames.join("\n");
  String get wiresharkFilter => "(${ips.map((ip) => "ip.addr == $ip").join(" or ")}) and (${protocols.map((p) => p.split(":").lastOrNull).nonNulls.join(" or ")})";
  String get protocolsString => _protocolsString;
  String get flow => "(${endpoint.ip}; ${serverNamesString.replaceAll("\n", "")}); ${ports.join(",")}; ${protocolsString.replaceAll("\n", ",")})";
  List<NetworkConnection> get connections;

  INetworkConnection get copy;

  List<TestRun> get testRuns;
  int get testRunCount => testRuns.length;
  List<NetworkPacket> get packets;

  // packet count
  int get outCount;
  int get inCount;
  int get countTotal => outCount + inCount;
  double get outCountAvg => testRunCount == 0 ? 0 : outCount / testRunCount;
  double get inCountAvg => testRunCount == 0 ? 0 : inCount / testRunCount;
  double get countAvg => testRunCount == 0 ? 0 : (countTotal) / testRunCount;

  // byte count
  int get outBytes;
  int get inBytes;
  int get bytesTotal => outBytes + inBytes;
  double get outBytesAvg => testRunCount == 0 ? 0 : outBytes / testRunCount;
  double get inBytesAvg => testRunCount == 0 ? 0 : inBytes / testRunCount;
  double get bytesAvg => testRunCount == 0 ? 0 : (bytesTotal) / testRunCount;

  String get _protocolsString {
    String tcp = "tcp";
    String udp = "udp";
    String other = "other";

    Map<String, List<String>> ps = {};
    for(var p in protocols){
      String type = p.toLowerCase().contains(tcp) ? tcp : p.toLowerCase().contains(udp) ? udp : other;

      var proto = p.split(":").lastOrNull;
      if(proto == null) continue;
      if(!ps.keys.contains(type)) ps[type] = [];
      if(!ps[type]!.contains(proto)) ps[type]!.add(proto);
    }

    String writeType(String type){
      String out = "";
      if(ps.keys.contains(type)) {
        ps[type]!.sort();
        out += "${type.toUpperCase()}:";
        for (String p in ps[type]!) {
          out += " $p";
        }
      }
      return out;
    }

    String out = "";
    if(ps[tcp]?.isNotEmpty ?? false) {
      out+=writeType(tcp);
    }
    if(ps[udp]?.isNotEmpty ?? false) {
      if(out.isNotEmpty) out+="\n";
      out+=writeType(udp);
    }
    if(ps[other]?.isNotEmpty ?? false) {
      if(out.isNotEmpty) out+="\n";
      out+=writeType(other);
    }
    return out;
  }

}

@Embedded(ignore: {'endpoint', 'copy', 'testRuns', 'connections', 'protocolsString', 'serverNames'})
class NetworkConnection extends INetworkConnection{
  NetworkConnection({
    String ip = "0.0.0.0",
    this.port,
    NetworkEndpoint? endpoint,
    this.serverName,
    this.packets = const [],
    this.testRuns = const [],
  }) {
    this.endpoint = endpoint ?? NetworkEndpoint(ip: ip, serverNames: serverName.empty ? [] : [serverName!],);
    analyzePackets();
  }

  NetworkConnection._copied({
    required this.port,
    required this.endpoint,
    required this.packets,
    required this.testRuns,
    required this.protocols,
    required this.serverName,
    required this.outCount,
    required this.inCount,
    required this.outBytes,
    required this.inBytes,
  });

  @override
  @ignore
  late NetworkEndpoint endpoint;
  String get ip => endpoint.ip;
  @override
  List<String> get ips => [ip];
  int? port;
  @override
  List<int> get ports => port != null ? [port!] : [];
  @override
  late List<String> protocols;

  @override
  List<String> get serverNames => serverName.empty ? [] : [serverName!];
  String? serverName;


  @override
  @ignore
  List<TestRun> testRuns;


  @override
  List<NetworkPacket> packets;
  @override
  late int outCount;
  @override
  late int inCount;
  @override
  late int outBytes;
  @override
  late int inBytes;


  void analyzePackets() {
    protocols = [];
    outCount = 0;
    inCount = 0;
    outBytes = 0;
    inBytes = 0;

    for (var packet in packets) {
      // collect all protocols used in the connection (should only be one)
      if(packet.protocols.notEmpty && !protocols.contains(packet.protocols)){
        protocols.add(packet.protocols!);
      }
      if (packet.ipDst == ip) {
        // packets going outwards to endpoint
        outCount++;
        outBytes += packet.size;
      } else if (packet.ipSrc == ip) {
        // packets coming in from endpoint
        inCount++;
        inBytes += packet.size;
      }
    }
    protocols.sort();
  }

  @override
  NetworkConnection get copy {
    return NetworkConnection._copied(
      port: port,
      endpoint: endpoint,
      testRuns: testRuns,
      protocols: protocols,
      serverName: serverName,
      outCount: outCount,
      inCount: inCount,
      outBytes: outBytes,
      inBytes: inBytes,
      packets: [...packets],
    );
  }

  @override
  List<NetworkConnection> get connections => [this];
}
