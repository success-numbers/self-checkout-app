// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTableEntityCollection on Isar {
  IsarCollection<TableEntity> get tableEntitys => this.collection();
}

const TableEntitySchema = CollectionSchema(
  name: r'TableEntity',
  id: 6154910817012454957,
  properties: {
    r'associateId': PropertySchema(
      id: 0,
      name: r'associateId',
      type: IsarType.string,
    ),
    r'associateName': PropertySchema(
      id: 1,
      name: r'associateName',
      type: IsarType.string,
    ),
    r'customerId': PropertySchema(
      id: 2,
      name: r'customerId',
      type: IsarType.string,
    ),
    r'customerName': PropertySchema(
      id: 3,
      name: r'customerName',
      type: IsarType.string,
    ),
    r'floorId': PropertySchema(
      id: 4,
      name: r'floorId',
      type: IsarType.string,
    ),
    r'orderId': PropertySchema(
      id: 5,
      name: r'orderId',
      type: IsarType.string,
    ),
    r'orderTime': PropertySchema(
      id: 6,
      name: r'orderTime',
      type: IsarType.dateTime,
    ),
    r'rotation': PropertySchema(
      id: 7,
      name: r'rotation',
      type: IsarType.double,
    ),
    r'scale': PropertySchema(
      id: 8,
      name: r'scale',
      type: IsarType.double,
    ),
    r'status': PropertySchema(
      id: 9,
      name: r'status',
      type: IsarType.string,
      enumMap: _TableEntitystatusEnumValueMap,
    ),
    r'syncState': PropertySchema(
      id: 10,
      name: r'syncState',
      type: IsarType.long,
    ),
    r'tableCapacity': PropertySchema(
      id: 11,
      name: r'tableCapacity',
      type: IsarType.long,
    ),
    r'tableId': PropertySchema(
      id: 12,
      name: r'tableId',
      type: IsarType.string,
    ),
    r'x': PropertySchema(
      id: 13,
      name: r'x',
      type: IsarType.double,
    ),
    r'y': PropertySchema(
      id: 14,
      name: r'y',
      type: IsarType.double,
    )
  },
  estimateSize: _tableEntityEstimateSize,
  serialize: _tableEntitySerialize,
  deserialize: _tableEntityDeserialize,
  deserializeProp: _tableEntityDeserializeProp,
  idName: r'id',
  indexes: {
    r'tableId': IndexSchema(
      id: 519297262500120396,
      name: r'tableId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'tableId',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'tableId_floorId': IndexSchema(
      id: 3381486057060095874,
      name: r'tableId_floorId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'tableId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
        IndexPropertySchema(
          name: r'floorId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'floorId': IndexSchema(
      id: -5614466107289224596,
      name: r'floorId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'floorId',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'syncState': IndexSchema(
      id: -413052077849439895,
      name: r'syncState',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'syncState',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _tableEntityGetId,
  getLinks: _tableEntityGetLinks,
  attach: _tableEntityAttach,
  version: '3.1.0+1',
);

int _tableEntityEstimateSize(
  TableEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.associateId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.associateName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.customerId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.customerName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.floorId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.orderId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.status.name.length * 3;
  bytesCount += 3 + object.tableId.length * 3;
  return bytesCount;
}

void _tableEntitySerialize(
  TableEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.associateId);
  writer.writeString(offsets[1], object.associateName);
  writer.writeString(offsets[2], object.customerId);
  writer.writeString(offsets[3], object.customerName);
  writer.writeString(offsets[4], object.floorId);
  writer.writeString(offsets[5], object.orderId);
  writer.writeDateTime(offsets[6], object.orderTime);
  writer.writeDouble(offsets[7], object.rotation);
  writer.writeDouble(offsets[8], object.scale);
  writer.writeString(offsets[9], object.status.name);
  writer.writeLong(offsets[10], object.syncState);
  writer.writeLong(offsets[11], object.tableCapacity);
  writer.writeString(offsets[12], object.tableId);
  writer.writeDouble(offsets[13], object.x);
  writer.writeDouble(offsets[14], object.y);
}

TableEntity _tableEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TableEntity(
    associateId: reader.readStringOrNull(offsets[0]),
    associateName: reader.readStringOrNull(offsets[1]),
    customerId: reader.readStringOrNull(offsets[2]),
    customerName: reader.readStringOrNull(offsets[3]),
    floorId: reader.readStringOrNull(offsets[4]),
    orderId: reader.readStringOrNull(offsets[5]),
    orderTime: reader.readDateTimeOrNull(offsets[6]),
    rotation: reader.readDoubleOrNull(offsets[7]) ?? 0,
    scale: reader.readDoubleOrNull(offsets[8]) ?? 1,
    status:
        _TableEntitystatusValueEnumMap[reader.readStringOrNull(offsets[9])] ??
            TableStatus.available,
    syncState: reader.readLongOrNull(offsets[10]),
    tableCapacity: reader.readLong(offsets[11]),
    tableId: reader.readString(offsets[12]),
    x: reader.readDoubleOrNull(offsets[13]) ?? 0.0,
    y: reader.readDoubleOrNull(offsets[14]) ?? 0.0,
  );
  object.id = id;
  return object;
}

P _tableEntityDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 7:
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    case 8:
      return (reader.readDoubleOrNull(offset) ?? 1) as P;
    case 9:
      return (_TableEntitystatusValueEnumMap[reader.readStringOrNull(offset)] ??
          TableStatus.available) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readDoubleOrNull(offset) ?? 0.0) as P;
    case 14:
      return (reader.readDoubleOrNull(offset) ?? 0.0) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _TableEntitystatusEnumValueMap = {
  r'available': r'available',
  r'occupied': r'occupied',
  r'reserved': r'reserved',
  r'dirty': r'dirty',
};
const _TableEntitystatusValueEnumMap = {
  r'available': TableStatus.available,
  r'occupied': TableStatus.occupied,
  r'reserved': TableStatus.reserved,
  r'dirty': TableStatus.dirty,
};

Id _tableEntityGetId(TableEntity object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _tableEntityGetLinks(TableEntity object) {
  return [];
}

void _tableEntityAttach(
    IsarCollection<dynamic> col, Id id, TableEntity object) {
  object.id = id;
}

extension TableEntityByIndex on IsarCollection<TableEntity> {
  Future<TableEntity?> getByTableIdFloorId(String tableId, String? floorId) {
    return getByIndex(r'tableId_floorId', [tableId, floorId]);
  }

  TableEntity? getByTableIdFloorIdSync(String tableId, String? floorId) {
    return getByIndexSync(r'tableId_floorId', [tableId, floorId]);
  }

  Future<bool> deleteByTableIdFloorId(String tableId, String? floorId) {
    return deleteByIndex(r'tableId_floorId', [tableId, floorId]);
  }

  bool deleteByTableIdFloorIdSync(String tableId, String? floorId) {
    return deleteByIndexSync(r'tableId_floorId', [tableId, floorId]);
  }

  Future<List<TableEntity?>> getAllByTableIdFloorId(
      List<String> tableIdValues, List<String?> floorIdValues) {
    final len = tableIdValues.length;
    assert(floorIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([tableIdValues[i], floorIdValues[i]]);
    }

    return getAllByIndex(r'tableId_floorId', values);
  }

  List<TableEntity?> getAllByTableIdFloorIdSync(
      List<String> tableIdValues, List<String?> floorIdValues) {
    final len = tableIdValues.length;
    assert(floorIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([tableIdValues[i], floorIdValues[i]]);
    }

    return getAllByIndexSync(r'tableId_floorId', values);
  }

  Future<int> deleteAllByTableIdFloorId(
      List<String> tableIdValues, List<String?> floorIdValues) {
    final len = tableIdValues.length;
    assert(floorIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([tableIdValues[i], floorIdValues[i]]);
    }

    return deleteAllByIndex(r'tableId_floorId', values);
  }

  int deleteAllByTableIdFloorIdSync(
      List<String> tableIdValues, List<String?> floorIdValues) {
    final len = tableIdValues.length;
    assert(floorIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([tableIdValues[i], floorIdValues[i]]);
    }

    return deleteAllByIndexSync(r'tableId_floorId', values);
  }

  Future<Id> putByTableIdFloorId(TableEntity object) {
    return putByIndex(r'tableId_floorId', object);
  }

  Id putByTableIdFloorIdSync(TableEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'tableId_floorId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByTableIdFloorId(List<TableEntity> objects) {
    return putAllByIndex(r'tableId_floorId', objects);
  }

  List<Id> putAllByTableIdFloorIdSync(List<TableEntity> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'tableId_floorId', objects, saveLinks: saveLinks);
  }
}

extension TableEntityQueryWhereSort
    on QueryBuilder<TableEntity, TableEntity, QWhere> {
  QueryBuilder<TableEntity, TableEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhere> anyTableId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'tableId'),
      );
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhere> anyFloorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'floorId'),
      );
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhere> anySyncState() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'syncState'),
      );
    });
  }
}

extension TableEntityQueryWhere
    on QueryBuilder<TableEntity, TableEntity, QWhereClause> {
  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> idBetween(
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

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> tableIdEqualTo(
      String tableId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'tableId',
        value: [tableId],
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> tableIdNotEqualTo(
      String tableId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tableId',
              lower: [],
              upper: [tableId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tableId',
              lower: [tableId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tableId',
              lower: [tableId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tableId',
              lower: [],
              upper: [tableId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> tableIdGreaterThan(
    String tableId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'tableId',
        lower: [tableId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> tableIdLessThan(
    String tableId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'tableId',
        lower: [],
        upper: [tableId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> tableIdBetween(
    String lowerTableId,
    String upperTableId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'tableId',
        lower: [lowerTableId],
        includeLower: includeLower,
        upper: [upperTableId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> tableIdStartsWith(
      String TableIdPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'tableId',
        lower: [TableIdPrefix],
        upper: ['$TableIdPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> tableIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'tableId',
        value: [''],
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause>
      tableIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'tableId',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'tableId',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'tableId',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'tableId',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause>
      tableIdEqualToAnyFloorId(String tableId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'tableId_floorId',
        value: [tableId],
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause>
      tableIdNotEqualToAnyFloorId(String tableId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tableId_floorId',
              lower: [],
              upper: [tableId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tableId_floorId',
              lower: [tableId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tableId_floorId',
              lower: [tableId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tableId_floorId',
              lower: [],
              upper: [tableId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause>
      tableIdEqualToFloorIdIsNull(String tableId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'tableId_floorId',
        value: [tableId, null],
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause>
      tableIdEqualToFloorIdIsNotNull(String tableId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'tableId_floorId',
        lower: [tableId, null],
        includeLower: false,
        upper: [
          tableId,
        ],
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause>
      tableIdFloorIdEqualTo(String tableId, String? floorId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'tableId_floorId',
        value: [tableId, floorId],
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause>
      tableIdEqualToFloorIdNotEqualTo(String tableId, String? floorId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tableId_floorId',
              lower: [tableId],
              upper: [tableId, floorId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tableId_floorId',
              lower: [tableId, floorId],
              includeLower: false,
              upper: [tableId],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tableId_floorId',
              lower: [tableId, floorId],
              includeLower: false,
              upper: [tableId],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tableId_floorId',
              lower: [tableId],
              upper: [tableId, floorId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> floorIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'floorId',
        value: [null],
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> floorIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'floorId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> floorIdEqualTo(
      String? floorId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'floorId',
        value: [floorId],
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> floorIdNotEqualTo(
      String? floorId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'floorId',
              lower: [],
              upper: [floorId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'floorId',
              lower: [floorId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'floorId',
              lower: [floorId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'floorId',
              lower: [],
              upper: [floorId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> floorIdGreaterThan(
    String? floorId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'floorId',
        lower: [floorId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> floorIdLessThan(
    String? floorId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'floorId',
        lower: [],
        upper: [floorId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> floorIdBetween(
    String? lowerFloorId,
    String? upperFloorId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'floorId',
        lower: [lowerFloorId],
        includeLower: includeLower,
        upper: [upperFloorId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> floorIdStartsWith(
      String FloorIdPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'floorId',
        lower: [FloorIdPrefix],
        upper: ['$FloorIdPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> floorIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'floorId',
        value: [''],
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause>
      floorIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'floorId',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'floorId',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'floorId',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'floorId',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> syncStateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'syncState',
        value: [null],
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause>
      syncStateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'syncState',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> syncStateEqualTo(
      int? syncState) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'syncState',
        value: [syncState],
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> syncStateNotEqualTo(
      int? syncState) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'syncState',
              lower: [],
              upper: [syncState],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'syncState',
              lower: [syncState],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'syncState',
              lower: [syncState],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'syncState',
              lower: [],
              upper: [syncState],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause>
      syncStateGreaterThan(
    int? syncState, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'syncState',
        lower: [syncState],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> syncStateLessThan(
    int? syncState, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'syncState',
        lower: [],
        upper: [syncState],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterWhereClause> syncStateBetween(
    int? lowerSyncState,
    int? upperSyncState, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'syncState',
        lower: [lowerSyncState],
        includeLower: includeLower,
        upper: [upperSyncState],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TableEntityQueryFilter
    on QueryBuilder<TableEntity, TableEntity, QFilterCondition> {
  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      associateIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'associateId',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      associateIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'associateId',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      associateIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'associateId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      associateIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'associateId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      associateIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'associateId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      associateIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'associateId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      associateIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'associateId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      associateIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'associateId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      associateIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'associateId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      associateIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'associateId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      associateIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'associateId',
        value: '',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      associateIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'associateId',
        value: '',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      associateNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'associateName',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      associateNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'associateName',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      associateNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'associateName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      associateNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'associateName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      associateNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'associateName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      associateNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'associateName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      associateNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'associateName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      associateNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'associateName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      associateNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'associateName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      associateNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'associateName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      associateNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'associateName',
        value: '',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      associateNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'associateName',
        value: '',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      customerIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerId',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      customerIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerId',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      customerIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      customerIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      customerIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      customerIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      customerIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      customerIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      customerIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      customerIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      customerIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerId',
        value: '',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      customerIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerId',
        value: '',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      customerNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerName',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      customerNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerName',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      customerNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      customerNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      customerNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      customerNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      customerNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      customerNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      customerNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      customerNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      customerNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerName',
        value: '',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      customerNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerName',
        value: '',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      floorIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'floorId',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      floorIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'floorId',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> floorIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'floorId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      floorIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'floorId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> floorIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'floorId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> floorIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'floorId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      floorIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'floorId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> floorIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'floorId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> floorIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'floorId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> floorIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'floorId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      floorIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'floorId',
        value: '',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      floorIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'floorId',
        value: '',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      orderIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'orderId',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      orderIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'orderId',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> orderIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'orderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      orderIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'orderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> orderIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'orderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> orderIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'orderId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      orderIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'orderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> orderIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'orderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> orderIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'orderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> orderIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'orderId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      orderIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'orderId',
        value: '',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      orderIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'orderId',
        value: '',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      orderTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'orderTime',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      orderTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'orderTime',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      orderTimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'orderTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      orderTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'orderTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      orderTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'orderTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      orderTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'orderTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> rotationEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rotation',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      rotationGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rotation',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      rotationLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rotation',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> rotationBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rotation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> scaleEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'scale',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      scaleGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'scale',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> scaleLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'scale',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> scaleBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'scale',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> statusEqualTo(
    TableStatus value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      statusGreaterThan(
    TableStatus value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> statusLessThan(
    TableStatus value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> statusBetween(
    TableStatus lower,
    TableStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> statusContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> statusMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      syncStateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'syncState',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      syncStateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'syncState',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      syncStateEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'syncState',
        value: value,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      syncStateGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'syncState',
        value: value,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      syncStateLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'syncState',
        value: value,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      syncStateBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'syncState',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      tableCapacityEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tableCapacity',
        value: value,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      tableCapacityGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tableCapacity',
        value: value,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      tableCapacityLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tableCapacity',
        value: value,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      tableCapacityBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tableCapacity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> tableIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tableId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      tableIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tableId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> tableIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tableId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> tableIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tableId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      tableIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tableId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> tableIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tableId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> tableIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tableId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> tableIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tableId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      tableIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tableId',
        value: '',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition>
      tableIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tableId',
        value: '',
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> xEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'x',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> xGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'x',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> xLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'x',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> xBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'x',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> yEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'y',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> yGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'y',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> yLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'y',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterFilterCondition> yBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'y',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension TableEntityQueryObject
    on QueryBuilder<TableEntity, TableEntity, QFilterCondition> {}

extension TableEntityQueryLinks
    on QueryBuilder<TableEntity, TableEntity, QFilterCondition> {}

extension TableEntityQuerySortBy
    on QueryBuilder<TableEntity, TableEntity, QSortBy> {
  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortByAssociateId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'associateId', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortByAssociateIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'associateId', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortByAssociateName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'associateName', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy>
      sortByAssociateNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'associateName', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortByCustomerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortByCustomerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy>
      sortByCustomerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortByFloorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'floorId', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortByFloorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'floorId', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortByOrderId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderId', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortByOrderIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderId', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortByOrderTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderTime', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortByOrderTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderTime', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortByRotation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rotation', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortByRotationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rotation', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortByScale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scale', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortByScaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scale', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortBySyncState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncState', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortBySyncStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncState', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortByTableCapacity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tableCapacity', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy>
      sortByTableCapacityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tableCapacity', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortByTableId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tableId', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortByTableIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tableId', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortByX() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'x', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortByXDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'x', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortByY() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> sortByYDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y', Sort.desc);
    });
  }
}

extension TableEntityQuerySortThenBy
    on QueryBuilder<TableEntity, TableEntity, QSortThenBy> {
  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByAssociateId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'associateId', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByAssociateIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'associateId', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByAssociateName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'associateName', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy>
      thenByAssociateNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'associateName', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByCustomerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByCustomerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy>
      thenByCustomerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByFloorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'floorId', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByFloorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'floorId', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByOrderId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderId', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByOrderIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderId', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByOrderTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderTime', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByOrderTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderTime', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByRotation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rotation', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByRotationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rotation', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByScale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scale', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByScaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scale', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenBySyncState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncState', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenBySyncStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncState', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByTableCapacity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tableCapacity', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy>
      thenByTableCapacityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tableCapacity', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByTableId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tableId', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByTableIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tableId', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByX() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'x', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByXDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'x', Sort.desc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByY() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y', Sort.asc);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QAfterSortBy> thenByYDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y', Sort.desc);
    });
  }
}

extension TableEntityQueryWhereDistinct
    on QueryBuilder<TableEntity, TableEntity, QDistinct> {
  QueryBuilder<TableEntity, TableEntity, QDistinct> distinctByAssociateId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'associateId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QDistinct> distinctByAssociateName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'associateName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QDistinct> distinctByCustomerId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QDistinct> distinctByCustomerName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QDistinct> distinctByFloorId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'floorId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QDistinct> distinctByOrderId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'orderId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QDistinct> distinctByOrderTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'orderTime');
    });
  }

  QueryBuilder<TableEntity, TableEntity, QDistinct> distinctByRotation() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rotation');
    });
  }

  QueryBuilder<TableEntity, TableEntity, QDistinct> distinctByScale() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'scale');
    });
  }

  QueryBuilder<TableEntity, TableEntity, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QDistinct> distinctBySyncState() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'syncState');
    });
  }

  QueryBuilder<TableEntity, TableEntity, QDistinct> distinctByTableCapacity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tableCapacity');
    });
  }

  QueryBuilder<TableEntity, TableEntity, QDistinct> distinctByTableId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tableId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TableEntity, TableEntity, QDistinct> distinctByX() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'x');
    });
  }

  QueryBuilder<TableEntity, TableEntity, QDistinct> distinctByY() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'y');
    });
  }
}

extension TableEntityQueryProperty
    on QueryBuilder<TableEntity, TableEntity, QQueryProperty> {
  QueryBuilder<TableEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TableEntity, String?, QQueryOperations> associateIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'associateId');
    });
  }

  QueryBuilder<TableEntity, String?, QQueryOperations> associateNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'associateName');
    });
  }

  QueryBuilder<TableEntity, String?, QQueryOperations> customerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerId');
    });
  }

  QueryBuilder<TableEntity, String?, QQueryOperations> customerNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerName');
    });
  }

  QueryBuilder<TableEntity, String?, QQueryOperations> floorIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'floorId');
    });
  }

  QueryBuilder<TableEntity, String?, QQueryOperations> orderIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'orderId');
    });
  }

  QueryBuilder<TableEntity, DateTime?, QQueryOperations> orderTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'orderTime');
    });
  }

  QueryBuilder<TableEntity, double, QQueryOperations> rotationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rotation');
    });
  }

  QueryBuilder<TableEntity, double, QQueryOperations> scaleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'scale');
    });
  }

  QueryBuilder<TableEntity, TableStatus, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<TableEntity, int?, QQueryOperations> syncStateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'syncState');
    });
  }

  QueryBuilder<TableEntity, int, QQueryOperations> tableCapacityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tableCapacity');
    });
  }

  QueryBuilder<TableEntity, String, QQueryOperations> tableIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tableId');
    });
  }

  QueryBuilder<TableEntity, double, QQueryOperations> xProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'x');
    });
  }

  QueryBuilder<TableEntity, double, QQueryOperations> yProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'y');
    });
  }
}
