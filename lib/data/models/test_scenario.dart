import 'package:isar/isar.dart';
import 'package:permission_analyzer_gui/data/data.dart';

part 'test_scenario.g.dart';

@collection
class TestScenario {
  TestScenario({
    this.userInputRecord = "",
    this.name = "",
    this.applicationName = "",
    this.applicationId = "",
    this.device = "",
    this.deviceInput = const AndroidInputDevice(),
    this.networkInterface = const TsharkNetworkInterface(),
    this.durationInSeconds = 60,
    this.numTestRuns = 1,
    this.permissions = const [],
    this.recordScreen = true,
    this.captureTraffic = true,
    this.testConstellations = const [],
  });

  Id id = Isar.autoIncrement;

  String name;
  String userInputRecord;
  String device;
  String applicationName;
  @Index()
  String applicationId;
  AndroidInputDevice deviceInput;
  TsharkNetworkInterface networkInterface;

  int durationInSeconds;
  @ignore
  Duration get duration => Duration(seconds: durationInSeconds);
  int numTestRuns;
  List<PermissionSetting> permissions;
  bool recordScreen;
  bool captureTraffic;

  List<TestConstellation> testConstellations;

}
