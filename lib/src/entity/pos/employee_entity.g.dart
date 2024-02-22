// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetEmployeeEntityCollection on Isar {
  IsarCollection<EmployeeEntity> get employeeEntitys => this.collection();
}

const EmployeeEntitySchema = CollectionSchema(
  name: r'EmployeeEntity',
  id: -565720732203765070,
  properties: {
    r'access': PropertySchema(
      id: 0,
      name: r'access',
      type: IsarType.string,
    ),
    r'allocatedStore': PropertySchema(
      id: 1,
      name: r'allocatedStore',
      type: IsarType.string,
    ),
    r'birthDate': PropertySchema(
      id: 2,
      name: r'birthDate',
      type: IsarType.dateTime,
    ),
    r'currentStore': PropertySchema(
      id: 3,
      name: r'currentStore',
      type: IsarType.string,
    ),
    r'deviceKey': PropertySchema(
      id: 4,
      name: r'deviceKey',
      type: IsarType.string,
    ),
    r'email': PropertySchema(
      id: 5,
      name: r'email',
      type: IsarType.string,
    ),
    r'employeeId': PropertySchema(
      id: 6,
      name: r'employeeId',
      type: IsarType.string,
    ),
    r'firstName': PropertySchema(
      id: 7,
      name: r'firstName',
      type: IsarType.string,
    ),
    r'gender': PropertySchema(
      id: 8,
      name: r'gender',
      type: IsarType.string,
    ),
    r'lastClockedInAt': PropertySchema(
      id: 9,
      name: r'lastClockedInAt',
      type: IsarType.long,
    ),
    r'lastClockedOutAt': PropertySchema(
      id: 10,
      name: r'lastClockedOutAt',
      type: IsarType.long,
    ),
    r'lastName': PropertySchema(
      id: 11,
      name: r'lastName',
      type: IsarType.string,
    ),
    r'locale': PropertySchema(
      id: 12,
      name: r'locale',
      type: IsarType.string,
    ),
    r'middleName': PropertySchema(
      id: 13,
      name: r'middleName',
      type: IsarType.string,
    ),
    r'phone': PropertySchema(
      id: 14,
      name: r'phone',
      type: IsarType.string,
    ),
    r'picture': PropertySchema(
      id: 15,
      name: r'picture',
      type: IsarType.string,
    ),
    r'registerId': PropertySchema(
      id: 16,
      name: r'registerId',
      type: IsarType.string,
    ),
    r'roles': PropertySchema(
      id: 17,
      name: r'roles',
      type: IsarType.stringList,
    )
  },
  estimateSize: _employeeEntityEstimateSize,
  serialize: _employeeEntitySerialize,
  deserialize: _employeeEntityDeserialize,
  deserializeProp: _employeeEntityDeserializeProp,
  idName: r'id',
  indexes: {
    r'employeeId': IndexSchema(
      id: 1283453093523034672,
      name: r'employeeId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'employeeId',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _employeeEntityGetId,
  getLinks: _employeeEntityGetLinks,
  attach: _employeeEntityAttach,
  version: '3.1.0+1',
);

int _employeeEntityEstimateSize(
  EmployeeEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.access;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.allocatedStore;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.currentStore;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.deviceKey;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.email;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.employeeId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.firstName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.gender;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.lastName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.locale;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.middleName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.phone.length * 3;
  {
    final value = object.picture;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.registerId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.roles;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  return bytesCount;
}

void _employeeEntitySerialize(
  EmployeeEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.access);
  writer.writeString(offsets[1], object.allocatedStore);
  writer.writeDateTime(offsets[2], object.birthDate);
  writer.writeString(offsets[3], object.currentStore);
  writer.writeString(offsets[4], object.deviceKey);
  writer.writeString(offsets[5], object.email);
  writer.writeString(offsets[6], object.employeeId);
  writer.writeString(offsets[7], object.firstName);
  writer.writeString(offsets[8], object.gender);
  writer.writeLong(offsets[9], object.lastClockedInAt);
  writer.writeLong(offsets[10], object.lastClockedOutAt);
  writer.writeString(offsets[11], object.lastName);
  writer.writeString(offsets[12], object.locale);
  writer.writeString(offsets[13], object.middleName);
  writer.writeString(offsets[14], object.phone);
  writer.writeString(offsets[15], object.picture);
  writer.writeString(offsets[16], object.registerId);
  writer.writeStringList(offsets[17], object.roles);
}

EmployeeEntity _employeeEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = EmployeeEntity(
    access: reader.readStringOrNull(offsets[0]),
    allocatedStore: reader.readStringOrNull(offsets[1]),
    birthDate: reader.readDateTimeOrNull(offsets[2]),
    currentStore: reader.readStringOrNull(offsets[3]),
    deviceKey: reader.readStringOrNull(offsets[4]),
    email: reader.readStringOrNull(offsets[5]),
    employeeId: reader.readStringOrNull(offsets[6]),
    firstName: reader.readStringOrNull(offsets[7]),
    gender: reader.readStringOrNull(offsets[8]),
    lastClockedInAt: reader.readLongOrNull(offsets[9]),
    lastClockedOutAt: reader.readLongOrNull(offsets[10]),
    lastName: reader.readStringOrNull(offsets[11]),
    locale: reader.readStringOrNull(offsets[12]),
    middleName: reader.readStringOrNull(offsets[13]),
    phone: reader.readString(offsets[14]),
    picture: reader.readStringOrNull(offsets[15]),
    registerId: reader.readStringOrNull(offsets[16]),
    roles: reader.readStringList(offsets[17]),
  );
  object.id = id;
  return object;
}

P _employeeEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readStringList(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _employeeEntityGetId(EmployeeEntity object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _employeeEntityGetLinks(EmployeeEntity object) {
  return [];
}

void _employeeEntityAttach(
    IsarCollection<dynamic> col, Id id, EmployeeEntity object) {
  object.id = id;
}

extension EmployeeEntityByIndex on IsarCollection<EmployeeEntity> {
  Future<EmployeeEntity?> getByEmployeeId(String? employeeId) {
    return getByIndex(r'employeeId', [employeeId]);
  }

  EmployeeEntity? getByEmployeeIdSync(String? employeeId) {
    return getByIndexSync(r'employeeId', [employeeId]);
  }

  Future<bool> deleteByEmployeeId(String? employeeId) {
    return deleteByIndex(r'employeeId', [employeeId]);
  }

  bool deleteByEmployeeIdSync(String? employeeId) {
    return deleteByIndexSync(r'employeeId', [employeeId]);
  }

  Future<List<EmployeeEntity?>> getAllByEmployeeId(
      List<String?> employeeIdValues) {
    final values = employeeIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'employeeId', values);
  }

  List<EmployeeEntity?> getAllByEmployeeIdSync(List<String?> employeeIdValues) {
    final values = employeeIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'employeeId', values);
  }

  Future<int> deleteAllByEmployeeId(List<String?> employeeIdValues) {
    final values = employeeIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'employeeId', values);
  }

  int deleteAllByEmployeeIdSync(List<String?> employeeIdValues) {
    final values = employeeIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'employeeId', values);
  }

  Future<Id> putByEmployeeId(EmployeeEntity object) {
    return putByIndex(r'employeeId', object);
  }

  Id putByEmployeeIdSync(EmployeeEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'employeeId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByEmployeeId(List<EmployeeEntity> objects) {
    return putAllByIndex(r'employeeId', objects);
  }

  List<Id> putAllByEmployeeIdSync(List<EmployeeEntity> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'employeeId', objects, saveLinks: saveLinks);
  }
}

extension EmployeeEntityQueryWhereSort
    on QueryBuilder<EmployeeEntity, EmployeeEntity, QWhere> {
  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhere> anyEmployeeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'employeeId'),
      );
    });
  }
}

extension EmployeeEntityQueryWhere
    on QueryBuilder<EmployeeEntity, EmployeeEntity, QWhereClause> {
  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause>
      employeeIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'employeeId',
        value: [null],
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause>
      employeeIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'employeeId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause>
      employeeIdEqualTo(String? employeeId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'employeeId',
        value: [employeeId],
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause>
      employeeIdNotEqualTo(String? employeeId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'employeeId',
              lower: [],
              upper: [employeeId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'employeeId',
              lower: [employeeId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'employeeId',
              lower: [employeeId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'employeeId',
              lower: [],
              upper: [employeeId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause>
      employeeIdGreaterThan(
    String? employeeId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'employeeId',
        lower: [employeeId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause>
      employeeIdLessThan(
    String? employeeId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'employeeId',
        lower: [],
        upper: [employeeId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause>
      employeeIdBetween(
    String? lowerEmployeeId,
    String? upperEmployeeId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'employeeId',
        lower: [lowerEmployeeId],
        includeLower: includeLower,
        upper: [upperEmployeeId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause>
      employeeIdStartsWith(String EmployeeIdPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'employeeId',
        lower: [EmployeeIdPrefix],
        upper: ['$EmployeeIdPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause>
      employeeIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'employeeId',
        value: [''],
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterWhereClause>
      employeeIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'employeeId',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'employeeId',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'employeeId',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'employeeId',
              upper: [''],
            ));
      }
    });
  }
}

extension EmployeeEntityQueryFilter
    on QueryBuilder<EmployeeEntity, EmployeeEntity, QFilterCondition> {
  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      accessIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'access',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      accessIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'access',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      accessEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'access',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      accessGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'access',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      accessLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'access',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      accessBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'access',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      accessStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'access',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      accessEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'access',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      accessContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'access',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      accessMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'access',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      accessIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'access',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      accessIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'access',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      allocatedStoreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'allocatedStore',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      allocatedStoreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'allocatedStore',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      allocatedStoreEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'allocatedStore',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      allocatedStoreGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'allocatedStore',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      allocatedStoreLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'allocatedStore',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      allocatedStoreBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'allocatedStore',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      allocatedStoreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'allocatedStore',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      allocatedStoreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'allocatedStore',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      allocatedStoreContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'allocatedStore',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      allocatedStoreMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'allocatedStore',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      allocatedStoreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'allocatedStore',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      allocatedStoreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'allocatedStore',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      birthDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'birthDate',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      birthDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'birthDate',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      birthDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'birthDate',
        value: value,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      birthDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'birthDate',
        value: value,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      birthDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'birthDate',
        value: value,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      birthDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'birthDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      currentStoreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'currentStore',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      currentStoreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'currentStore',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      currentStoreEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentStore',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      currentStoreGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currentStore',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      currentStoreLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currentStore',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      currentStoreBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currentStore',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      currentStoreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'currentStore',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      currentStoreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'currentStore',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      currentStoreContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'currentStore',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      currentStoreMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'currentStore',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      currentStoreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentStore',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      currentStoreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'currentStore',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      deviceKeyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'deviceKey',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      deviceKeyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'deviceKey',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      deviceKeyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deviceKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      deviceKeyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deviceKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      deviceKeyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deviceKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      deviceKeyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deviceKey',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      deviceKeyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'deviceKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      deviceKeyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'deviceKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      deviceKeyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'deviceKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      deviceKeyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'deviceKey',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      deviceKeyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deviceKey',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      deviceKeyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'deviceKey',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      emailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      emailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      emailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      emailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      emailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      emailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      emailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      emailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      employeeIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'employeeId',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      employeeIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'employeeId',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      employeeIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employeeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      employeeIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'employeeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      employeeIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'employeeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      employeeIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'employeeId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      employeeIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'employeeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      employeeIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'employeeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      employeeIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'employeeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      employeeIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'employeeId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      employeeIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employeeId',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      employeeIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'employeeId',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      firstNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'firstName',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      firstNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'firstName',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      firstNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      firstNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      firstNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      firstNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'firstName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      firstNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      firstNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      firstNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      firstNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'firstName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      firstNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstName',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      firstNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'firstName',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      genderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'gender',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      genderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'gender',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      genderEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      genderGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      genderLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      genderBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gender',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      genderStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      genderEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      genderContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      genderMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'gender',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      genderIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gender',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      genderIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'gender',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastClockedInAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastClockedInAt',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastClockedInAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastClockedInAt',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastClockedInAtEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastClockedInAt',
        value: value,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastClockedInAtGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastClockedInAt',
        value: value,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastClockedInAtLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastClockedInAt',
        value: value,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastClockedInAtBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastClockedInAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastClockedOutAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastClockedOutAt',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastClockedOutAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastClockedOutAt',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastClockedOutAtEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastClockedOutAt',
        value: value,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastClockedOutAtGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastClockedOutAt',
        value: value,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastClockedOutAtLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastClockedOutAt',
        value: value,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastClockedOutAtBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastClockedOutAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastName',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastName',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lastName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastName',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      lastNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastName',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      localeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'locale',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      localeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'locale',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      localeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      localeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'locale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      localeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'locale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      localeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'locale',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      localeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'locale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      localeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'locale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      localeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'locale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      localeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'locale',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      localeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locale',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      localeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'locale',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      middleNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'middleName',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      middleNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'middleName',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      middleNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'middleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      middleNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'middleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      middleNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'middleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      middleNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'middleName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      middleNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'middleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      middleNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'middleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      middleNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'middleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      middleNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'middleName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      middleNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'middleName',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      middleNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'middleName',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      phoneEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      phoneGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      phoneLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      phoneBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      phoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      phoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      phoneContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      phoneMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      phoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      phoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      pictureIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'picture',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      pictureIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'picture',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      pictureEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'picture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      pictureGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'picture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      pictureLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'picture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      pictureBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'picture',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      pictureStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'picture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      pictureEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'picture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      pictureContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'picture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      pictureMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'picture',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      pictureIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'picture',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      pictureIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'picture',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      registerIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'registerId',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      registerIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'registerId',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      registerIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      registerIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'registerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      registerIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'registerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      registerIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'registerId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      registerIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'registerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      registerIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'registerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      registerIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'registerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      registerIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'registerId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      registerIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registerId',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      registerIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'registerId',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      rolesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'roles',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      rolesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'roles',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      rolesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'roles',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      rolesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'roles',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      rolesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'roles',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      rolesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'roles',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      rolesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'roles',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      rolesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'roles',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      rolesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'roles',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      rolesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'roles',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      rolesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'roles',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      rolesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'roles',
        value: '',
      ));
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      rolesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'roles',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      rolesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'roles',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      rolesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'roles',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      rolesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'roles',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      rolesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'roles',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterFilterCondition>
      rolesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'roles',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension EmployeeEntityQueryObject
    on QueryBuilder<EmployeeEntity, EmployeeEntity, QFilterCondition> {}

extension EmployeeEntityQueryLinks
    on QueryBuilder<EmployeeEntity, EmployeeEntity, QFilterCondition> {}

extension EmployeeEntityQuerySortBy
    on QueryBuilder<EmployeeEntity, EmployeeEntity, QSortBy> {
  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> sortByAccess() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'access', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByAccessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'access', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByAllocatedStore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'allocatedStore', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByAllocatedStoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'allocatedStore', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> sortByBirthDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthDate', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByBirthDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthDate', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByCurrentStore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentStore', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByCurrentStoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentStore', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> sortByDeviceKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deviceKey', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByDeviceKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deviceKey', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByEmployeeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByEmployeeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> sortByFirstName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByFirstNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> sortByGender() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByGenderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByLastClockedInAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastClockedInAt', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByLastClockedInAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastClockedInAt', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByLastClockedOutAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastClockedOutAt', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByLastClockedOutAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastClockedOutAt', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> sortByLastName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByLastNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> sortByLocale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locale', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByLocaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locale', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByMiddleName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'middleName', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByMiddleNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'middleName', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> sortByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> sortByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> sortByPicture() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'picture', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByPictureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'picture', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByRegisterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registerId', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      sortByRegisterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registerId', Sort.desc);
    });
  }
}

extension EmployeeEntityQuerySortThenBy
    on QueryBuilder<EmployeeEntity, EmployeeEntity, QSortThenBy> {
  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenByAccess() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'access', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByAccessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'access', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByAllocatedStore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'allocatedStore', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByAllocatedStoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'allocatedStore', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenByBirthDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthDate', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByBirthDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthDate', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByCurrentStore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentStore', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByCurrentStoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentStore', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenByDeviceKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deviceKey', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByDeviceKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deviceKey', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByEmployeeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByEmployeeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenByFirstName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByFirstNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenByGender() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByGenderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByLastClockedInAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastClockedInAt', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByLastClockedInAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastClockedInAt', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByLastClockedOutAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastClockedOutAt', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByLastClockedOutAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastClockedOutAt', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenByLastName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByLastNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenByLocale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locale', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByLocaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locale', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByMiddleName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'middleName', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByMiddleNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'middleName', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy> thenByPicture() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'picture', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByPictureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'picture', Sort.desc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByRegisterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registerId', Sort.asc);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QAfterSortBy>
      thenByRegisterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registerId', Sort.desc);
    });
  }
}

extension EmployeeEntityQueryWhereDistinct
    on QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct> {
  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct> distinctByAccess(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'access', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct>
      distinctByAllocatedStore({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'allocatedStore',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct>
      distinctByBirthDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'birthDate');
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct>
      distinctByCurrentStore({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currentStore', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct> distinctByDeviceKey(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deviceKey', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct> distinctByEmployeeId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'employeeId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct> distinctByFirstName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'firstName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct> distinctByGender(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gender', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct>
      distinctByLastClockedInAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastClockedInAt');
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct>
      distinctByLastClockedOutAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastClockedOutAt');
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct> distinctByLastName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct> distinctByLocale(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'locale', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct> distinctByMiddleName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'middleName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct> distinctByPhone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct> distinctByPicture(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'picture', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct> distinctByRegisterId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registerId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EmployeeEntity, EmployeeEntity, QDistinct> distinctByRoles() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'roles');
    });
  }
}

extension EmployeeEntityQueryProperty
    on QueryBuilder<EmployeeEntity, EmployeeEntity, QQueryProperty> {
  QueryBuilder<EmployeeEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<EmployeeEntity, String?, QQueryOperations> accessProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'access');
    });
  }

  QueryBuilder<EmployeeEntity, String?, QQueryOperations>
      allocatedStoreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'allocatedStore');
    });
  }

  QueryBuilder<EmployeeEntity, DateTime?, QQueryOperations>
      birthDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'birthDate');
    });
  }

  QueryBuilder<EmployeeEntity, String?, QQueryOperations>
      currentStoreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currentStore');
    });
  }

  QueryBuilder<EmployeeEntity, String?, QQueryOperations> deviceKeyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deviceKey');
    });
  }

  QueryBuilder<EmployeeEntity, String?, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<EmployeeEntity, String?, QQueryOperations> employeeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'employeeId');
    });
  }

  QueryBuilder<EmployeeEntity, String?, QQueryOperations> firstNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'firstName');
    });
  }

  QueryBuilder<EmployeeEntity, String?, QQueryOperations> genderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gender');
    });
  }

  QueryBuilder<EmployeeEntity, int?, QQueryOperations>
      lastClockedInAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastClockedInAt');
    });
  }

  QueryBuilder<EmployeeEntity, int?, QQueryOperations>
      lastClockedOutAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastClockedOutAt');
    });
  }

  QueryBuilder<EmployeeEntity, String?, QQueryOperations> lastNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastName');
    });
  }

  QueryBuilder<EmployeeEntity, String?, QQueryOperations> localeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'locale');
    });
  }

  QueryBuilder<EmployeeEntity, String?, QQueryOperations> middleNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'middleName');
    });
  }

  QueryBuilder<EmployeeEntity, String, QQueryOperations> phoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phone');
    });
  }

  QueryBuilder<EmployeeEntity, String?, QQueryOperations> pictureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'picture');
    });
  }

  QueryBuilder<EmployeeEntity, String?, QQueryOperations> registerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registerId');
    });
  }

  QueryBuilder<EmployeeEntity, List<String>?, QQueryOperations>
      rolesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'roles');
    });
  }
}
