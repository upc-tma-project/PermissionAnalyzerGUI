// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_endpoint.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetNetworkEndpointCollection on Isar {
  IsarCollection<NetworkEndpoint> get networkEndpoints => this.collection();
}

const NetworkEndpointSchema = CollectionSchema(
  name: r'NetworkEndpoint',
  id: 654488200310036562,
  properties: {
    r'analyzed': PropertySchema(
      id: 0,
      name: r'analyzed',
      type: IsarType.bool,
    ),
    r'domainString': PropertySchema(
      id: 1,
      name: r'domainString',
      type: IsarType.string,
    ),
    r'geolocation': PropertySchema(
      id: 2,
      name: r'geolocation',
      type: IsarType.object,
      target: r'Geolocation',
    ),
    r'geolocations': PropertySchema(
      id: 3,
      name: r'geolocations',
      type: IsarType.objectList,
      target: r'Geolocation',
    ),
    r'hasHostname': PropertySchema(
      id: 4,
      name: r'hasHostname',
      type: IsarType.bool,
    ),
    r'hasServerName': PropertySchema(
      id: 5,
      name: r'hasServerName',
      type: IsarType.bool,
    ),
    r'hostname': PropertySchema(
      id: 6,
      name: r'hostname',
      type: IsarType.string,
    ),
    r'hostnames': PropertySchema(
      id: 7,
      name: r'hostnames',
      type: IsarType.stringList,
    ),
    r'id': PropertySchema(
      id: 8,
      name: r'id',
      type: IsarType.string,
    ),
    r'ip': PropertySchema(
      id: 9,
      name: r'ip',
      type: IsarType.string,
    ),
    r'serverNames': PropertySchema(
      id: 10,
      name: r'serverNames',
      type: IsarType.stringList,
    ),
    r'tags': PropertySchema(
      id: 11,
      name: r'tags',
      type: IsarType.stringList,
    ),
    r'whois': PropertySchema(
      id: 12,
      name: r'whois',
      type: IsarType.string,
    )
  },
  estimateSize: _networkEndpointEstimateSize,
  serialize: _networkEndpointSerialize,
  deserialize: _networkEndpointDeserialize,
  deserializeProp: _networkEndpointDeserializeProp,
  idName: r'isarId',
  indexes: {
    r'ip': IndexSchema(
      id: 7908241743102109407,
      name: r'ip',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'ip',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {r'Geolocation': GeolocationSchema},
  getId: _networkEndpointGetId,
  getLinks: _networkEndpointGetLinks,
  attach: _networkEndpointAttach,
  version: '3.1.8',
);

int _networkEndpointEstimateSize(
  NetworkEndpoint object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.domainString;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.geolocation;
    if (value != null) {
      bytesCount += 3 +
          GeolocationSchema.estimateSize(
              value, allOffsets[Geolocation]!, allOffsets);
    }
  }
  bytesCount += 3 + object.geolocations.length * 3;
  {
    final offsets = allOffsets[Geolocation]!;
    for (var i = 0; i < object.geolocations.length; i++) {
      final value = object.geolocations[i];
      bytesCount += GeolocationSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  {
    final value = object.hostname;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.hostnames.length * 3;
  {
    for (var i = 0; i < object.hostnames.length; i++) {
      final value = object.hostnames[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.ip.length * 3;
  bytesCount += 3 + object.serverNames.length * 3;
  {
    for (var i = 0; i < object.serverNames.length; i++) {
      final value = object.serverNames[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.tags.length * 3;
  {
    for (var i = 0; i < object.tags.length; i++) {
      final value = object.tags[i];
      bytesCount += value.length * 3;
    }
  }
  {
    final value = object.whois;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _networkEndpointSerialize(
  NetworkEndpoint object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.analyzed);
  writer.writeString(offsets[1], object.domainString);
  writer.writeObject<Geolocation>(
    offsets[2],
    allOffsets,
    GeolocationSchema.serialize,
    object.geolocation,
  );
  writer.writeObjectList<Geolocation>(
    offsets[3],
    allOffsets,
    GeolocationSchema.serialize,
    object.geolocations,
  );
  writer.writeBool(offsets[4], object.hasHostname);
  writer.writeBool(offsets[5], object.hasServerName);
  writer.writeString(offsets[6], object.hostname);
  writer.writeStringList(offsets[7], object.hostnames);
  writer.writeString(offsets[8], object.id);
  writer.writeString(offsets[9], object.ip);
  writer.writeStringList(offsets[10], object.serverNames);
  writer.writeStringList(offsets[11], object.tags);
  writer.writeString(offsets[12], object.whois);
}

NetworkEndpoint _networkEndpointDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NetworkEndpoint(
    analyzed: reader.readBoolOrNull(offsets[0]) ?? false,
    geolocation: reader.readObjectOrNull<Geolocation>(
      offsets[2],
      GeolocationSchema.deserialize,
      allOffsets,
    ),
    hostname: reader.readStringOrNull(offsets[6]),
    ip: reader.readStringOrNull(offsets[9]) ?? "",
    serverNames: reader.readStringList(offsets[10]) ?? const [],
    tags: reader.readStringList(offsets[11]) ?? const [],
    whois: reader.readStringOrNull(offsets[12]),
  );
  object.isarId = id;
  return object;
}

P _networkEndpointDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readObjectOrNull<Geolocation>(
        offset,
        GeolocationSchema.deserialize,
        allOffsets,
      )) as P;
    case 3:
      return (reader.readObjectList<Geolocation>(
            offset,
            GeolocationSchema.deserialize,
            allOffsets,
            Geolocation(),
          ) ??
          []) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringList(offset) ?? []) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset) ?? "") as P;
    case 10:
      return (reader.readStringList(offset) ?? const []) as P;
    case 11:
      return (reader.readStringList(offset) ?? const []) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _networkEndpointGetId(NetworkEndpoint object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _networkEndpointGetLinks(NetworkEndpoint object) {
  return [];
}

void _networkEndpointAttach(
    IsarCollection<dynamic> col, Id id, NetworkEndpoint object) {
  object.isarId = id;
}

extension NetworkEndpointByIndex on IsarCollection<NetworkEndpoint> {
  Future<NetworkEndpoint?> getByIp(String ip) {
    return getByIndex(r'ip', [ip]);
  }

  NetworkEndpoint? getByIpSync(String ip) {
    return getByIndexSync(r'ip', [ip]);
  }

  Future<bool> deleteByIp(String ip) {
    return deleteByIndex(r'ip', [ip]);
  }

  bool deleteByIpSync(String ip) {
    return deleteByIndexSync(r'ip', [ip]);
  }

  Future<List<NetworkEndpoint?>> getAllByIp(List<String> ipValues) {
    final values = ipValues.map((e) => [e]).toList();
    return getAllByIndex(r'ip', values);
  }

  List<NetworkEndpoint?> getAllByIpSync(List<String> ipValues) {
    final values = ipValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'ip', values);
  }

  Future<int> deleteAllByIp(List<String> ipValues) {
    final values = ipValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'ip', values);
  }

  int deleteAllByIpSync(List<String> ipValues) {
    final values = ipValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'ip', values);
  }

  Future<Id> putByIp(NetworkEndpoint object) {
    return putByIndex(r'ip', object);
  }

  Id putByIpSync(NetworkEndpoint object, {bool saveLinks = true}) {
    return putByIndexSync(r'ip', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByIp(List<NetworkEndpoint> objects) {
    return putAllByIndex(r'ip', objects);
  }

  List<Id> putAllByIpSync(List<NetworkEndpoint> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'ip', objects, saveLinks: saveLinks);
  }
}

extension NetworkEndpointQueryWhereSort
    on QueryBuilder<NetworkEndpoint, NetworkEndpoint, QWhere> {
  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension NetworkEndpointQueryWhere
    on QueryBuilder<NetworkEndpoint, NetworkEndpoint, QWhereClause> {
  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterWhereClause>
      isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterWhereClause>
      isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterWhereClause>
      isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterWhereClause> ipEqualTo(
      String ip) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ip',
        value: [ip],
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterWhereClause>
      ipNotEqualTo(String ip) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ip',
              lower: [],
              upper: [ip],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ip',
              lower: [ip],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ip',
              lower: [ip],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ip',
              lower: [],
              upper: [ip],
              includeUpper: false,
            ));
      }
    });
  }
}

extension NetworkEndpointQueryFilter
    on QueryBuilder<NetworkEndpoint, NetworkEndpoint, QFilterCondition> {
  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      analyzedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'analyzed',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      domainStringIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'domainString',
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      domainStringIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'domainString',
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      domainStringEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'domainString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      domainStringGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'domainString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      domainStringLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'domainString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      domainStringBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'domainString',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      domainStringStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'domainString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      domainStringEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'domainString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      domainStringContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'domainString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      domainStringMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'domainString',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      domainStringIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'domainString',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      domainStringIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'domainString',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      geolocationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'geolocation',
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      geolocationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'geolocation',
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      geolocationsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'geolocations',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      geolocationsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'geolocations',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      geolocationsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'geolocations',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      geolocationsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'geolocations',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      geolocationsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'geolocations',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      geolocationsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'geolocations',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hasHostnameEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hasHostname',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hasServerNameEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hasServerName',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hostname',
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hostname',
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hostname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hostname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hostname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hostname',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hostname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hostname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hostname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hostname',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hostname',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hostname',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnamesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hostnames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnamesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hostnames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnamesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hostnames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnamesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hostnames',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnamesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hostnames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnamesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hostnames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnamesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hostnames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnamesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hostnames',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnamesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hostnames',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnamesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hostnames',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnamesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hostnames',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnamesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hostnames',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnamesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hostnames',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnamesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hostnames',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnamesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hostnames',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      hostnamesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hostnames',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      idMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      ipEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      ipGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      ipLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      ipBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ip',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      ipStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      ipEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      ipContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      ipMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ip',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      ipIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ip',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      ipIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ip',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      serverNamesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serverNames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      serverNamesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serverNames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      serverNamesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serverNames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      serverNamesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serverNames',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      serverNamesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'serverNames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      serverNamesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'serverNames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      serverNamesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'serverNames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      serverNamesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'serverNames',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      serverNamesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serverNames',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      serverNamesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'serverNames',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      serverNamesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'serverNames',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      serverNamesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'serverNames',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      serverNamesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'serverNames',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      serverNamesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'serverNames',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      serverNamesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'serverNames',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      serverNamesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'serverNames',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      tagsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      tagsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      tagsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      tagsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tags',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      tagsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      tagsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      tagsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      tagsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tags',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      tagsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tags',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      tagsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tags',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      tagsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      tagsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      tagsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      tagsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      tagsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      tagsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      whoisIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'whois',
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      whoisIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'whois',
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      whoisEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'whois',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      whoisGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'whois',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      whoisLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'whois',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      whoisBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'whois',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      whoisStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'whois',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      whoisEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'whois',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      whoisContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'whois',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      whoisMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'whois',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      whoisIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'whois',
        value: '',
      ));
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      whoisIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'whois',
        value: '',
      ));
    });
  }
}

extension NetworkEndpointQueryObject
    on QueryBuilder<NetworkEndpoint, NetworkEndpoint, QFilterCondition> {
  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      geolocation(FilterQuery<Geolocation> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'geolocation');
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterFilterCondition>
      geolocationsElement(FilterQuery<Geolocation> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'geolocations');
    });
  }
}

extension NetworkEndpointQueryLinks
    on QueryBuilder<NetworkEndpoint, NetworkEndpoint, QFilterCondition> {}

extension NetworkEndpointQuerySortBy
    on QueryBuilder<NetworkEndpoint, NetworkEndpoint, QSortBy> {
  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy>
      sortByAnalyzed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'analyzed', Sort.asc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy>
      sortByAnalyzedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'analyzed', Sort.desc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy>
      sortByDomainString() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domainString', Sort.asc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy>
      sortByDomainStringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domainString', Sort.desc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy>
      sortByHasHostname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasHostname', Sort.asc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy>
      sortByHasHostnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasHostname', Sort.desc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy>
      sortByHasServerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasServerName', Sort.asc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy>
      sortByHasServerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasServerName', Sort.desc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy>
      sortByHostname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hostname', Sort.asc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy>
      sortByHostnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hostname', Sort.desc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy> sortByIp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ip', Sort.asc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy> sortByIpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ip', Sort.desc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy> sortByWhois() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'whois', Sort.asc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy>
      sortByWhoisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'whois', Sort.desc);
    });
  }
}

extension NetworkEndpointQuerySortThenBy
    on QueryBuilder<NetworkEndpoint, NetworkEndpoint, QSortThenBy> {
  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy>
      thenByAnalyzed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'analyzed', Sort.asc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy>
      thenByAnalyzedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'analyzed', Sort.desc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy>
      thenByDomainString() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domainString', Sort.asc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy>
      thenByDomainStringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domainString', Sort.desc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy>
      thenByHasHostname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasHostname', Sort.asc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy>
      thenByHasHostnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasHostname', Sort.desc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy>
      thenByHasServerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasServerName', Sort.asc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy>
      thenByHasServerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasServerName', Sort.desc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy>
      thenByHostname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hostname', Sort.asc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy>
      thenByHostnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hostname', Sort.desc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy> thenByIp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ip', Sort.asc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy> thenByIpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ip', Sort.desc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy> thenByWhois() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'whois', Sort.asc);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QAfterSortBy>
      thenByWhoisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'whois', Sort.desc);
    });
  }
}

extension NetworkEndpointQueryWhereDistinct
    on QueryBuilder<NetworkEndpoint, NetworkEndpoint, QDistinct> {
  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QDistinct>
      distinctByAnalyzed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'analyzed');
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QDistinct>
      distinctByDomainString({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'domainString', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QDistinct>
      distinctByHasHostname() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hasHostname');
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QDistinct>
      distinctByHasServerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hasServerName');
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QDistinct> distinctByHostname(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hostname', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QDistinct>
      distinctByHostnames() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hostnames');
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QDistinct> distinctByIp(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ip', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QDistinct>
      distinctByServerNames() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serverNames');
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QDistinct> distinctByTags() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tags');
    });
  }

  QueryBuilder<NetworkEndpoint, NetworkEndpoint, QDistinct> distinctByWhois(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'whois', caseSensitive: caseSensitive);
    });
  }
}

extension NetworkEndpointQueryProperty
    on QueryBuilder<NetworkEndpoint, NetworkEndpoint, QQueryProperty> {
  QueryBuilder<NetworkEndpoint, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<NetworkEndpoint, bool, QQueryOperations> analyzedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'analyzed');
    });
  }

  QueryBuilder<NetworkEndpoint, String?, QQueryOperations>
      domainStringProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'domainString');
    });
  }

  QueryBuilder<NetworkEndpoint, Geolocation?, QQueryOperations>
      geolocationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'geolocation');
    });
  }

  QueryBuilder<NetworkEndpoint, List<Geolocation>, QQueryOperations>
      geolocationsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'geolocations');
    });
  }

  QueryBuilder<NetworkEndpoint, bool, QQueryOperations> hasHostnameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hasHostname');
    });
  }

  QueryBuilder<NetworkEndpoint, bool, QQueryOperations>
      hasServerNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hasServerName');
    });
  }

  QueryBuilder<NetworkEndpoint, String?, QQueryOperations> hostnameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hostname');
    });
  }

  QueryBuilder<NetworkEndpoint, List<String>, QQueryOperations>
      hostnamesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hostnames');
    });
  }

  QueryBuilder<NetworkEndpoint, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<NetworkEndpoint, String, QQueryOperations> ipProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ip');
    });
  }

  QueryBuilder<NetworkEndpoint, List<String>, QQueryOperations>
      serverNamesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serverNames');
    });
  }

  QueryBuilder<NetworkEndpoint, List<String>, QQueryOperations> tagsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tags');
    });
  }

  QueryBuilder<NetworkEndpoint, String?, QQueryOperations> whoisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'whois');
    });
  }
}
