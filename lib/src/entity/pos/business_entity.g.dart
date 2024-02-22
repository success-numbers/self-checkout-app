// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetRetailLocationEntityCollection on Isar {
  IsarCollection<RetailLocationEntity> get retailLocationEntitys =>
      this.collection();
}

const RetailLocationEntitySchema = CollectionSchema(
  name: r'RetailLocationEntity',
  id: 1894392434087363926,
  properties: {
    r'address': PropertySchema(
      id: 0,
      name: r'address',
      type: IsarType.object,
      target: r'Address',
    ),
    r'config': PropertySchema(
      id: 1,
      name: r'config',
      type: IsarType.stringList,
    ),
    r'createTime': PropertySchema(
      id: 2,
      name: r'createTime',
      type: IsarType.dateTime,
    ),
    r'currencyId': PropertySchema(
      id: 3,
      name: r'currencyId',
      type: IsarType.string,
    ),
    r'customerTypes': PropertySchema(
      id: 4,
      name: r'customerTypes',
      type: IsarType.objectList,
      target: r'CustomerType',
    ),
    r'discountCoupons': PropertySchema(
      id: 5,
      name: r'discountCoupons',
      type: IsarType.objectList,
      target: r'DiscountCouponModel',
    ),
    r'gst': PropertySchema(
      id: 6,
      name: r'gst',
      type: IsarType.string,
    ),
    r'lastChangedAt': PropertySchema(
      id: 7,
      name: r'lastChangedAt',
      type: IsarType.dateTime,
    ),
    r'legalBusiness': PropertySchema(
      id: 8,
      name: r'legalBusiness',
      type: IsarType.string,
    ),
    r'locale': PropertySchema(
      id: 9,
      name: r'locale',
      type: IsarType.string,
    ),
    r'logo': PropertySchema(
      id: 10,
      name: r'logo',
      type: IsarType.stringList,
    ),
    r'pan': PropertySchema(
      id: 11,
      name: r'pan',
      type: IsarType.string,
    ),
    r'register': PropertySchema(
      id: 12,
      name: r'register',
      type: IsarType.object,
      target: r'Register',
    ),
    r'storeContact': PropertySchema(
      id: 13,
      name: r'storeContact',
      type: IsarType.string,
    ),
    r'storeEmail': PropertySchema(
      id: 14,
      name: r'storeEmail',
      type: IsarType.string,
    ),
    r'storeName': PropertySchema(
      id: 15,
      name: r'storeName',
      type: IsarType.string,
    ),
    r'storeNumber': PropertySchema(
      id: 16,
      name: r'storeNumber',
      type: IsarType.string,
    ),
    r'storeOpenTime': PropertySchema(
      id: 17,
      name: r'storeOpenTime',
      type: IsarType.string,
    ),
    r'storeOperatingHours': PropertySchema(
      id: 18,
      name: r'storeOperatingHours',
      type: IsarType.string,
    ),
    r'tenderDetails': PropertySchema(
      id: 19,
      name: r'tenderDetails',
      type: IsarType.objectList,
      target: r'TenderModel',
    ),
    r'updateTime': PropertySchema(
      id: 20,
      name: r'updateTime',
      type: IsarType.dateTime,
    ),
    r'version': PropertySchema(
      id: 21,
      name: r'version',
      type: IsarType.long,
    )
  },
  estimateSize: _retailLocationEntityEstimateSize,
  serialize: _retailLocationEntitySerialize,
  deserialize: _retailLocationEntityDeserialize,
  deserializeProp: _retailLocationEntityDeserializeProp,
  idName: r'rtlLocId',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'Address': AddressSchema,
    r'Register': RegisterSchema,
    r'TenderModel': TenderModelSchema,
    r'DiscountCouponModel': DiscountCouponModelSchema,
    r'CustomerType': CustomerTypeSchema
  },
  getId: _retailLocationEntityGetId,
  getLinks: _retailLocationEntityGetLinks,
  attach: _retailLocationEntityAttach,
  version: '3.1.0+1',
);

int _retailLocationEntityEstimateSize(
  RetailLocationEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.address;
    if (value != null) {
      bytesCount += 3 +
          AddressSchema.estimateSize(value, allOffsets[Address]!, allOffsets);
    }
  }
  bytesCount += 3 + object.config.length * 3;
  {
    for (var i = 0; i < object.config.length; i++) {
      final value = object.config[i];
      bytesCount += value.length * 3;
    }
  }
  {
    final value = object.currencyId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.customerTypes.length * 3;
  {
    final offsets = allOffsets[CustomerType]!;
    for (var i = 0; i < object.customerTypes.length; i++) {
      final value = object.customerTypes[i];
      bytesCount += CustomerTypeSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.discountCoupons.length * 3;
  {
    final offsets = allOffsets[DiscountCouponModel]!;
    for (var i = 0; i < object.discountCoupons.length; i++) {
      final value = object.discountCoupons[i];
      bytesCount +=
          DiscountCouponModelSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  {
    final value = object.gst;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.legalBusiness;
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
    final list = object.logo;
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
  {
    final value = object.pan;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.register;
    if (value != null) {
      bytesCount += 3 +
          RegisterSchema.estimateSize(value, allOffsets[Register]!, allOffsets);
    }
  }
  {
    final value = object.storeContact;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.storeEmail;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.storeName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.storeNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.storeOpenTime;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.storeOperatingHours;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.tenderDetails.length * 3;
  {
    final offsets = allOffsets[TenderModel]!;
    for (var i = 0; i < object.tenderDetails.length; i++) {
      final value = object.tenderDetails[i];
      bytesCount += TenderModelSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _retailLocationEntitySerialize(
  RetailLocationEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<Address>(
    offsets[0],
    allOffsets,
    AddressSchema.serialize,
    object.address,
  );
  writer.writeStringList(offsets[1], object.config);
  writer.writeDateTime(offsets[2], object.createTime);
  writer.writeString(offsets[3], object.currencyId);
  writer.writeObjectList<CustomerType>(
    offsets[4],
    allOffsets,
    CustomerTypeSchema.serialize,
    object.customerTypes,
  );
  writer.writeObjectList<DiscountCouponModel>(
    offsets[5],
    allOffsets,
    DiscountCouponModelSchema.serialize,
    object.discountCoupons,
  );
  writer.writeString(offsets[6], object.gst);
  writer.writeDateTime(offsets[7], object.lastChangedAt);
  writer.writeString(offsets[8], object.legalBusiness);
  writer.writeString(offsets[9], object.locale);
  writer.writeStringList(offsets[10], object.logo);
  writer.writeString(offsets[11], object.pan);
  writer.writeObject<Register>(
    offsets[12],
    allOffsets,
    RegisterSchema.serialize,
    object.register,
  );
  writer.writeString(offsets[13], object.storeContact);
  writer.writeString(offsets[14], object.storeEmail);
  writer.writeString(offsets[15], object.storeName);
  writer.writeString(offsets[16], object.storeNumber);
  writer.writeString(offsets[17], object.storeOpenTime);
  writer.writeString(offsets[18], object.storeOperatingHours);
  writer.writeObjectList<TenderModel>(
    offsets[19],
    allOffsets,
    TenderModelSchema.serialize,
    object.tenderDetails,
  );
  writer.writeDateTime(offsets[20], object.updateTime);
  writer.writeLong(offsets[21], object.version);
}

RetailLocationEntity _retailLocationEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = RetailLocationEntity(
    address: reader.readObjectOrNull<Address>(
      offsets[0],
      AddressSchema.deserialize,
      allOffsets,
    ),
    config: reader.readStringList(offsets[1]) ?? const [],
    createTime: reader.readDateTime(offsets[2]),
    currencyId: reader.readStringOrNull(offsets[3]),
    customerTypes: reader.readObjectList<CustomerType>(
          offsets[4],
          CustomerTypeSchema.deserialize,
          allOffsets,
          CustomerType(),
        ) ??
        const [],
    discountCoupons: reader.readObjectList<DiscountCouponModel>(
          offsets[5],
          DiscountCouponModelSchema.deserialize,
          allOffsets,
          DiscountCouponModel(),
        ) ??
        const [],
    gst: reader.readStringOrNull(offsets[6]),
    lastChangedAt: reader.readDateTimeOrNull(offsets[7]),
    legalBusiness: reader.readStringOrNull(offsets[8]),
    locale: reader.readStringOrNull(offsets[9]),
    logo: reader.readStringList(offsets[10]),
    pan: reader.readStringOrNull(offsets[11]),
    register: reader.readObjectOrNull<Register>(
      offsets[12],
      RegisterSchema.deserialize,
      allOffsets,
    ),
    rtlLocId: id,
    storeContact: reader.readStringOrNull(offsets[13]),
    storeEmail: reader.readStringOrNull(offsets[14]),
    storeName: reader.readStringOrNull(offsets[15]),
    storeNumber: reader.readStringOrNull(offsets[16]),
    storeOpenTime: reader.readStringOrNull(offsets[17]),
    storeOperatingHours: reader.readStringOrNull(offsets[18]),
    tenderDetails: reader.readObjectList<TenderModel>(
          offsets[19],
          TenderModelSchema.deserialize,
          allOffsets,
          TenderModel(),
        ) ??
        const [],
    updateTime: reader.readDateTimeOrNull(offsets[20]),
    version: reader.readLongOrNull(offsets[21]) ?? 1,
  );
  return object;
}

P _retailLocationEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<Address>(
        offset,
        AddressSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readStringList(offset) ?? const []) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readObjectList<CustomerType>(
            offset,
            CustomerTypeSchema.deserialize,
            allOffsets,
            CustomerType(),
          ) ??
          const []) as P;
    case 5:
      return (reader.readObjectList<DiscountCouponModel>(
            offset,
            DiscountCouponModelSchema.deserialize,
            allOffsets,
            DiscountCouponModel(),
          ) ??
          const []) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringList(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readObjectOrNull<Register>(
        offset,
        RegisterSchema.deserialize,
        allOffsets,
      )) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readStringOrNull(offset)) as P;
    case 19:
      return (reader.readObjectList<TenderModel>(
            offset,
            TenderModelSchema.deserialize,
            allOffsets,
            TenderModel(),
          ) ??
          const []) as P;
    case 20:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 21:
      return (reader.readLongOrNull(offset) ?? 1) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _retailLocationEntityGetId(RetailLocationEntity object) {
  return object.rtlLocId;
}

List<IsarLinkBase<dynamic>> _retailLocationEntityGetLinks(
    RetailLocationEntity object) {
  return [];
}

void _retailLocationEntityAttach(
    IsarCollection<dynamic> col, Id id, RetailLocationEntity object) {}

extension RetailLocationEntityQueryWhereSort
    on QueryBuilder<RetailLocationEntity, RetailLocationEntity, QWhere> {
  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterWhere>
      anyRtlLocId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RetailLocationEntityQueryWhere
    on QueryBuilder<RetailLocationEntity, RetailLocationEntity, QWhereClause> {
  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterWhereClause>
      rtlLocIdEqualTo(Id rtlLocId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: rtlLocId,
        upper: rtlLocId,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterWhereClause>
      rtlLocIdNotEqualTo(Id rtlLocId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: rtlLocId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: rtlLocId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: rtlLocId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: rtlLocId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterWhereClause>
      rtlLocIdGreaterThan(Id rtlLocId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: rtlLocId, includeLower: include),
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterWhereClause>
      rtlLocIdLessThan(Id rtlLocId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: rtlLocId, includeUpper: include),
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterWhereClause>
      rtlLocIdBetween(
    Id lowerRtlLocId,
    Id upperRtlLocId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerRtlLocId,
        includeLower: includeLower,
        upper: upperRtlLocId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RetailLocationEntityQueryFilter on QueryBuilder<RetailLocationEntity,
    RetailLocationEntity, QFilterCondition> {
  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> addressIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'address',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> addressIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'address',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> configElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'config',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> configElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'config',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> configElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'config',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> configElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'config',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> configElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'config',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> configElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'config',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      configElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'config',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      configElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'config',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> configElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'config',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> configElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'config',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> configLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'config',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> configIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'config',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> configIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'config',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> configLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'config',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> configLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'config',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> configLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'config',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> createTimeEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createTime',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> createTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createTime',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> createTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createTime',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> createTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'currencyId',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'currencyId',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currencyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currencyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currencyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currencyId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'currencyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'currencyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      currencyIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'currencyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      currencyIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'currencyId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currencyId',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> currencyIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'currencyId',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> customerTypesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'customerTypes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> customerTypesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'customerTypes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> customerTypesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'customerTypes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> customerTypesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'customerTypes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> customerTypesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'customerTypes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> customerTypesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'customerTypes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> discountCouponsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'discountCoupons',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> discountCouponsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'discountCoupons',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> discountCouponsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'discountCoupons',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> discountCouponsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'discountCoupons',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> discountCouponsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'discountCoupons',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> discountCouponsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'discountCoupons',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'gst',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'gst',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gst',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gst',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gst',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gst',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'gst',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'gst',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      gstContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'gst',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      gstMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'gst',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gst',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> gstIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'gst',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> lastChangedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastChangedAt',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> lastChangedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastChangedAt',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> lastChangedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastChangedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> lastChangedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastChangedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> lastChangedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastChangedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> lastChangedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastChangedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> legalBusinessIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'legalBusiness',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> legalBusinessIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'legalBusiness',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> legalBusinessEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'legalBusiness',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> legalBusinessGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'legalBusiness',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> legalBusinessLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'legalBusiness',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> legalBusinessBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'legalBusiness',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> legalBusinessStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'legalBusiness',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> legalBusinessEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'legalBusiness',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      legalBusinessContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'legalBusiness',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      legalBusinessMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'legalBusiness',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> legalBusinessIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'legalBusiness',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> legalBusinessIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'legalBusiness',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'locale',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'locale',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeEqualTo(
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

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeGreaterThan(
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

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeLessThan(
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

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeBetween(
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

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeStartsWith(
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

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeEndsWith(
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

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      localeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'locale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      localeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'locale',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locale',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> localeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'locale',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> logoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'logo',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> logoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'logo',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> logoElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'logo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> logoElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'logo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> logoElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'logo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> logoElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'logo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> logoElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'logo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> logoElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'logo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      logoElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'logo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      logoElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'logo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> logoElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'logo',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> logoElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'logo',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> logoLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'logo',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> logoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'logo',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> logoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'logo',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> logoLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'logo',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> logoLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'logo',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> logoLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'logo',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pan',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pan',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pan',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      panContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      panMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pan',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pan',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> panIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pan',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> registerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'register',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> registerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'register',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> rtlLocIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rtlLocId',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> rtlLocIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rtlLocId',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> rtlLocIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rtlLocId',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> rtlLocIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rtlLocId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'storeContact',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'storeContact',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storeContact',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'storeContact',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'storeContact',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'storeContact',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'storeContact',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'storeContact',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeContactContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'storeContact',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeContactMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'storeContact',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storeContact',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeContactIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'storeContact',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'storeEmail',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'storeEmail',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storeEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'storeEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'storeEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'storeEmail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'storeEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'storeEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeEmailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'storeEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeEmailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'storeEmail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storeEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'storeEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'storeName',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'storeName',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'storeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'storeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'storeName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'storeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'storeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'storeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'storeName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storeName',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'storeName',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'storeNumber',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'storeNumber',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storeNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'storeNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'storeNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'storeNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'storeNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'storeNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'storeNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'storeNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storeNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'storeNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeOpenTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'storeOpenTime',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeOpenTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'storeOpenTime',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeOpenTimeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storeOpenTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeOpenTimeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'storeOpenTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeOpenTimeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'storeOpenTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeOpenTimeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'storeOpenTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeOpenTimeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'storeOpenTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeOpenTimeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'storeOpenTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeOpenTimeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'storeOpenTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeOpenTimeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'storeOpenTime',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeOpenTimeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storeOpenTime',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeOpenTimeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'storeOpenTime',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeOperatingHoursIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'storeOperatingHours',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeOperatingHoursIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'storeOperatingHours',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeOperatingHoursEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storeOperatingHours',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeOperatingHoursGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'storeOperatingHours',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeOperatingHoursLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'storeOperatingHours',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeOperatingHoursBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'storeOperatingHours',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeOperatingHoursStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'storeOperatingHours',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeOperatingHoursEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'storeOperatingHours',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeOperatingHoursContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'storeOperatingHours',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      storeOperatingHoursMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'storeOperatingHours',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeOperatingHoursIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storeOperatingHours',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> storeOperatingHoursIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'storeOperatingHours',
        value: '',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> tenderDetailsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tenderDetails',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> tenderDetailsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tenderDetails',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> tenderDetailsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tenderDetails',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> tenderDetailsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tenderDetails',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> tenderDetailsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tenderDetails',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> tenderDetailsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tenderDetails',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> updateTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updateTime',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> updateTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updateTime',
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> updateTimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> updateTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> updateTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> updateTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> versionEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> versionGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> versionLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> versionBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'version',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RetailLocationEntityQueryObject on QueryBuilder<RetailLocationEntity,
    RetailLocationEntity, QFilterCondition> {
  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> address(FilterQuery<Address> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'address');
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> customerTypesElement(FilterQuery<CustomerType> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'customerTypes');
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
          QAfterFilterCondition>
      discountCouponsElement(FilterQuery<DiscountCouponModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'discountCoupons');
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> register(FilterQuery<Register> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'register');
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity,
      QAfterFilterCondition> tenderDetailsElement(FilterQuery<TenderModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'tenderDetails');
    });
  }
}

extension RetailLocationEntityQueryLinks on QueryBuilder<RetailLocationEntity,
    RetailLocationEntity, QFilterCondition> {}

extension RetailLocationEntityQuerySortBy
    on QueryBuilder<RetailLocationEntity, RetailLocationEntity, QSortBy> {
  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByCreateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByCreateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByCurrencyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currencyId', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByCurrencyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currencyId', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByGst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gst', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByGstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gst', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByLastChangedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastChangedAt', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByLastChangedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastChangedAt', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByLegalBusiness() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'legalBusiness', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByLegalBusinessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'legalBusiness', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByLocale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locale', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByLocaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locale', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByPan() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pan', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByPanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pan', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreContact() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeContact', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreContactDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeContact', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeEmail', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeEmail', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeName', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeName', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeNumber', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeNumber', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreOpenTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeOpenTime', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreOpenTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeOpenTime', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreOperatingHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeOperatingHours', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByStoreOperatingHoursDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeOperatingHours', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      sortByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension RetailLocationEntityQuerySortThenBy
    on QueryBuilder<RetailLocationEntity, RetailLocationEntity, QSortThenBy> {
  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByCreateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByCreateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByCurrencyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currencyId', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByCurrencyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currencyId', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByGst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gst', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByGstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gst', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByLastChangedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastChangedAt', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByLastChangedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastChangedAt', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByLegalBusiness() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'legalBusiness', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByLegalBusinessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'legalBusiness', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByLocale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locale', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByLocaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locale', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByPan() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pan', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByPanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pan', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByRtlLocId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rtlLocId', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByRtlLocIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rtlLocId', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreContact() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeContact', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreContactDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeContact', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeEmail', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeEmail', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeName', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeName', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeNumber', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeNumber', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreOpenTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeOpenTime', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreOpenTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeOpenTime', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreOperatingHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeOperatingHours', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByStoreOperatingHoursDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storeOperatingHours', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.desc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QAfterSortBy>
      thenByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension RetailLocationEntityQueryWhereDistinct
    on QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct> {
  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByConfig() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'config');
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByCreateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createTime');
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByCurrencyId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currencyId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByGst({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gst', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByLastChangedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastChangedAt');
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByLegalBusiness({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'legalBusiness',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByLocale({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'locale', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByLogo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'logo');
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByPan({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pan', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByStoreContact({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'storeContact', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByStoreEmail({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'storeEmail', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByStoreName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'storeName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByStoreNumber({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'storeNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByStoreOpenTime({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'storeOpenTime',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByStoreOperatingHours({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'storeOperatingHours',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updateTime');
    });
  }

  QueryBuilder<RetailLocationEntity, RetailLocationEntity, QDistinct>
      distinctByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'version');
    });
  }
}

extension RetailLocationEntityQueryProperty on QueryBuilder<
    RetailLocationEntity, RetailLocationEntity, QQueryProperty> {
  QueryBuilder<RetailLocationEntity, int, QQueryOperations> rtlLocIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rtlLocId');
    });
  }

  QueryBuilder<RetailLocationEntity, Address?, QQueryOperations>
      addressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'address');
    });
  }

  QueryBuilder<RetailLocationEntity, List<String>, QQueryOperations>
      configProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'config');
    });
  }

  QueryBuilder<RetailLocationEntity, DateTime, QQueryOperations>
      createTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createTime');
    });
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      currencyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currencyId');
    });
  }

  QueryBuilder<RetailLocationEntity, List<CustomerType>, QQueryOperations>
      customerTypesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerTypes');
    });
  }

  QueryBuilder<RetailLocationEntity, List<DiscountCouponModel>,
      QQueryOperations> discountCouponsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'discountCoupons');
    });
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations> gstProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gst');
    });
  }

  QueryBuilder<RetailLocationEntity, DateTime?, QQueryOperations>
      lastChangedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastChangedAt');
    });
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      legalBusinessProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'legalBusiness');
    });
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      localeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'locale');
    });
  }

  QueryBuilder<RetailLocationEntity, List<String>?, QQueryOperations>
      logoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'logo');
    });
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations> panProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pan');
    });
  }

  QueryBuilder<RetailLocationEntity, Register?, QQueryOperations>
      registerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'register');
    });
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      storeContactProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'storeContact');
    });
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      storeEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'storeEmail');
    });
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      storeNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'storeName');
    });
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      storeNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'storeNumber');
    });
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      storeOpenTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'storeOpenTime');
    });
  }

  QueryBuilder<RetailLocationEntity, String?, QQueryOperations>
      storeOperatingHoursProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'storeOperatingHours');
    });
  }

  QueryBuilder<RetailLocationEntity, List<TenderModel>, QQueryOperations>
      tenderDetailsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tenderDetails');
    });
  }

  QueryBuilder<RetailLocationEntity, DateTime?, QQueryOperations>
      updateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updateTime');
    });
  }

  QueryBuilder<RetailLocationEntity, int, QQueryOperations> versionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'version');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const RegisterSchema = Schema(
  name: r'Register',
  id: 374739083440794193,
  properties: {
    r'deviceId': PropertySchema(
      id: 0,
      name: r'deviceId',
      type: IsarType.string,
    ),
    r'employeeId': PropertySchema(
      id: 1,
      name: r'employeeId',
      type: IsarType.string,
    ),
    r'registerId': PropertySchema(
      id: 2,
      name: r'registerId',
      type: IsarType.long,
    ),
    r'status': PropertySchema(
      id: 3,
      name: r'status',
      type: IsarType.string,
    ),
    r'storeId': PropertySchema(
      id: 4,
      name: r'storeId',
      type: IsarType.string,
    )
  },
  estimateSize: _registerEstimateSize,
  serialize: _registerSerialize,
  deserialize: _registerDeserialize,
  deserializeProp: _registerDeserializeProp,
);

int _registerEstimateSize(
  Register object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.deviceId;
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
    final value = object.status;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.storeId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _registerSerialize(
  Register object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.deviceId);
  writer.writeString(offsets[1], object.employeeId);
  writer.writeLong(offsets[2], object.registerId);
  writer.writeString(offsets[3], object.status);
  writer.writeString(offsets[4], object.storeId);
}

Register _registerDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Register(
    deviceId: reader.readStringOrNull(offsets[0]),
    employeeId: reader.readStringOrNull(offsets[1]),
    registerId: reader.readLongOrNull(offsets[2]),
    status: reader.readStringOrNull(offsets[3]),
    storeId: reader.readStringOrNull(offsets[4]),
  );
  return object;
}

P _registerDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension RegisterQueryFilter
    on QueryBuilder<Register, Register, QFilterCondition> {
  QueryBuilder<Register, Register, QAfterFilterCondition> deviceIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'deviceId',
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> deviceIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'deviceId',
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> deviceIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deviceId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> deviceIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deviceId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> deviceIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deviceId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> deviceIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deviceId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> deviceIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'deviceId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> deviceIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'deviceId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> deviceIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'deviceId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> deviceIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'deviceId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> deviceIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deviceId',
        value: '',
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> deviceIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'deviceId',
        value: '',
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> employeeIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'employeeId',
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition>
      employeeIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'employeeId',
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> employeeIdEqualTo(
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

  QueryBuilder<Register, Register, QAfterFilterCondition> employeeIdGreaterThan(
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

  QueryBuilder<Register, Register, QAfterFilterCondition> employeeIdLessThan(
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

  QueryBuilder<Register, Register, QAfterFilterCondition> employeeIdBetween(
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

  QueryBuilder<Register, Register, QAfterFilterCondition> employeeIdStartsWith(
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

  QueryBuilder<Register, Register, QAfterFilterCondition> employeeIdEndsWith(
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

  QueryBuilder<Register, Register, QAfterFilterCondition> employeeIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'employeeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> employeeIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'employeeId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> employeeIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employeeId',
        value: '',
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition>
      employeeIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'employeeId',
        value: '',
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> registerIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'registerId',
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition>
      registerIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'registerId',
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> registerIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registerId',
        value: value,
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> registerIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'registerId',
        value: value,
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> registerIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'registerId',
        value: value,
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> registerIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'registerId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> statusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> statusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> statusEqualTo(
    String? value, {
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

  QueryBuilder<Register, Register, QAfterFilterCondition> statusGreaterThan(
    String? value, {
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

  QueryBuilder<Register, Register, QAfterFilterCondition> statusLessThan(
    String? value, {
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

  QueryBuilder<Register, Register, QAfterFilterCondition> statusBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<Register, Register, QAfterFilterCondition> statusStartsWith(
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

  QueryBuilder<Register, Register, QAfterFilterCondition> statusEndsWith(
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

  QueryBuilder<Register, Register, QAfterFilterCondition> statusContains(
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

  QueryBuilder<Register, Register, QAfterFilterCondition> statusMatches(
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

  QueryBuilder<Register, Register, QAfterFilterCondition> statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> storeIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'storeId',
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> storeIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'storeId',
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> storeIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> storeIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'storeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> storeIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'storeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> storeIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'storeId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> storeIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'storeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> storeIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'storeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> storeIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'storeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> storeIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'storeId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> storeIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storeId',
        value: '',
      ));
    });
  }

  QueryBuilder<Register, Register, QAfterFilterCondition> storeIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'storeId',
        value: '',
      ));
    });
  }
}

extension RegisterQueryObject
    on QueryBuilder<Register, Register, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const TenderModelSchema = Schema(
  name: r'TenderModel',
  id: 7532565038454041024,
  properties: {
    r'group': PropertySchema(
      id: 0,
      name: r'group',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    ),
    r'sortOrder': PropertySchema(
      id: 2,
      name: r'sortOrder',
      type: IsarType.long,
    ),
    r'tenderId': PropertySchema(
      id: 3,
      name: r'tenderId',
      type: IsarType.string,
    )
  },
  estimateSize: _tenderModelEstimateSize,
  serialize: _tenderModelSerialize,
  deserialize: _tenderModelDeserialize,
  deserializeProp: _tenderModelDeserializeProp,
);

int _tenderModelEstimateSize(
  TenderModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.group;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.tenderId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _tenderModelSerialize(
  TenderModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.group);
  writer.writeString(offsets[1], object.name);
  writer.writeLong(offsets[2], object.sortOrder);
  writer.writeString(offsets[3], object.tenderId);
}

TenderModel _tenderModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TenderModel(
    group: reader.readStringOrNull(offsets[0]),
    name: reader.readStringOrNull(offsets[1]),
    sortOrder: reader.readLongOrNull(offsets[2]),
    tenderId: reader.readStringOrNull(offsets[3]),
  );
  return object;
}

P _tenderModelDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension TenderModelQueryFilter
    on QueryBuilder<TenderModel, TenderModel, QFilterCondition> {
  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition> groupIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'group',
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition>
      groupIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'group',
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition> groupEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'group',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition>
      groupGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'group',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition> groupLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'group',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition> groupBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'group',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition> groupStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'group',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition> groupEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'group',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition> groupContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'group',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition> groupMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'group',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition> groupIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'group',
        value: '',
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition>
      groupIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'group',
        value: '',
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition>
      sortOrderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sortOrder',
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition>
      sortOrderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sortOrder',
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition>
      sortOrderEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sortOrder',
        value: value,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition>
      sortOrderGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sortOrder',
        value: value,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition>
      sortOrderLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sortOrder',
        value: value,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition>
      sortOrderBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sortOrder',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition>
      tenderIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tenderId',
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition>
      tenderIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tenderId',
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition> tenderIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tenderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition>
      tenderIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tenderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition>
      tenderIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tenderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition> tenderIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tenderId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition>
      tenderIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tenderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition>
      tenderIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tenderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition>
      tenderIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tenderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition> tenderIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tenderId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition>
      tenderIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tenderId',
        value: '',
      ));
    });
  }

  QueryBuilder<TenderModel, TenderModel, QAfterFilterCondition>
      tenderIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tenderId',
        value: '',
      ));
    });
  }
}

extension TenderModelQueryObject
    on QueryBuilder<TenderModel, TenderModel, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const CustomerTypeSchema = Schema(
  name: r'CustomerType',
  id: -7057012874106676440,
  properties: {
    r'desc': PropertySchema(
      id: 0,
      name: r'desc',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 1,
      name: r'id',
      type: IsarType.string,
    )
  },
  estimateSize: _customerTypeEstimateSize,
  serialize: _customerTypeSerialize,
  deserialize: _customerTypeDeserialize,
  deserializeProp: _customerTypeDeserializeProp,
);

int _customerTypeEstimateSize(
  CustomerType object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.desc;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.id;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _customerTypeSerialize(
  CustomerType object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.desc);
  writer.writeString(offsets[1], object.id);
}

CustomerType _customerTypeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CustomerType(
    desc: reader.readStringOrNull(offsets[0]),
    id: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _customerTypeDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension CustomerTypeQueryFilter
    on QueryBuilder<CustomerType, CustomerType, QFilterCondition> {
  QueryBuilder<CustomerType, CustomerType, QAfterFilterCondition> descIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'desc',
      ));
    });
  }

  QueryBuilder<CustomerType, CustomerType, QAfterFilterCondition>
      descIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'desc',
      ));
    });
  }

  QueryBuilder<CustomerType, CustomerType, QAfterFilterCondition> descEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'desc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerType, CustomerType, QAfterFilterCondition>
      descGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'desc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerType, CustomerType, QAfterFilterCondition> descLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'desc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerType, CustomerType, QAfterFilterCondition> descBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'desc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerType, CustomerType, QAfterFilterCondition>
      descStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'desc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerType, CustomerType, QAfterFilterCondition> descEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'desc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerType, CustomerType, QAfterFilterCondition> descContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'desc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerType, CustomerType, QAfterFilterCondition> descMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'desc',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerType, CustomerType, QAfterFilterCondition>
      descIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'desc',
        value: '',
      ));
    });
  }

  QueryBuilder<CustomerType, CustomerType, QAfterFilterCondition>
      descIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'desc',
        value: '',
      ));
    });
  }

  QueryBuilder<CustomerType, CustomerType, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CustomerType, CustomerType, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CustomerType, CustomerType, QAfterFilterCondition> idEqualTo(
    String? value, {
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

  QueryBuilder<CustomerType, CustomerType, QAfterFilterCondition> idGreaterThan(
    String? value, {
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

  QueryBuilder<CustomerType, CustomerType, QAfterFilterCondition> idLessThan(
    String? value, {
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

  QueryBuilder<CustomerType, CustomerType, QAfterFilterCondition> idBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<CustomerType, CustomerType, QAfterFilterCondition> idStartsWith(
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

  QueryBuilder<CustomerType, CustomerType, QAfterFilterCondition> idEndsWith(
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

  QueryBuilder<CustomerType, CustomerType, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerType, CustomerType, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerType, CustomerType, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<CustomerType, CustomerType, QAfterFilterCondition>
      idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }
}

extension CustomerTypeQueryObject
    on QueryBuilder<CustomerType, CustomerType, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const DiscountCouponModelSchema = Schema(
  name: r'DiscountCouponModel',
  id: 8836020649165630383,
  properties: {
    r'discountId': PropertySchema(
      id: 0,
      name: r'discountId',
      type: IsarType.string,
    ),
    r'discountPercentage': PropertySchema(
      id: 1,
      name: r'discountPercentage',
      type: IsarType.string,
    )
  },
  estimateSize: _discountCouponModelEstimateSize,
  serialize: _discountCouponModelSerialize,
  deserialize: _discountCouponModelDeserialize,
  deserializeProp: _discountCouponModelDeserializeProp,
);

int _discountCouponModelEstimateSize(
  DiscountCouponModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.discountId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.discountPercentage;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _discountCouponModelSerialize(
  DiscountCouponModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.discountId);
  writer.writeString(offsets[1], object.discountPercentage);
}

DiscountCouponModel _discountCouponModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DiscountCouponModel(
    discountId: reader.readStringOrNull(offsets[0]),
    discountPercentage: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _discountCouponModelDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension DiscountCouponModelQueryFilter on QueryBuilder<DiscountCouponModel,
    DiscountCouponModel, QFilterCondition> {
  QueryBuilder<DiscountCouponModel, DiscountCouponModel, QAfterFilterCondition>
      discountIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'discountId',
      ));
    });
  }

  QueryBuilder<DiscountCouponModel, DiscountCouponModel, QAfterFilterCondition>
      discountIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'discountId',
      ));
    });
  }

  QueryBuilder<DiscountCouponModel, DiscountCouponModel, QAfterFilterCondition>
      discountIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discountId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountCouponModel, DiscountCouponModel, QAfterFilterCondition>
      discountIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'discountId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountCouponModel, DiscountCouponModel, QAfterFilterCondition>
      discountIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'discountId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountCouponModel, DiscountCouponModel, QAfterFilterCondition>
      discountIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'discountId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountCouponModel, DiscountCouponModel, QAfterFilterCondition>
      discountIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'discountId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountCouponModel, DiscountCouponModel, QAfterFilterCondition>
      discountIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'discountId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountCouponModel, DiscountCouponModel, QAfterFilterCondition>
      discountIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'discountId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountCouponModel, DiscountCouponModel, QAfterFilterCondition>
      discountIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'discountId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountCouponModel, DiscountCouponModel, QAfterFilterCondition>
      discountIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discountId',
        value: '',
      ));
    });
  }

  QueryBuilder<DiscountCouponModel, DiscountCouponModel, QAfterFilterCondition>
      discountIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'discountId',
        value: '',
      ));
    });
  }

  QueryBuilder<DiscountCouponModel, DiscountCouponModel, QAfterFilterCondition>
      discountPercentageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'discountPercentage',
      ));
    });
  }

  QueryBuilder<DiscountCouponModel, DiscountCouponModel, QAfterFilterCondition>
      discountPercentageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'discountPercentage',
      ));
    });
  }

  QueryBuilder<DiscountCouponModel, DiscountCouponModel, QAfterFilterCondition>
      discountPercentageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discountPercentage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountCouponModel, DiscountCouponModel, QAfterFilterCondition>
      discountPercentageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'discountPercentage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountCouponModel, DiscountCouponModel, QAfterFilterCondition>
      discountPercentageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'discountPercentage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountCouponModel, DiscountCouponModel, QAfterFilterCondition>
      discountPercentageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'discountPercentage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountCouponModel, DiscountCouponModel, QAfterFilterCondition>
      discountPercentageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'discountPercentage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountCouponModel, DiscountCouponModel, QAfterFilterCondition>
      discountPercentageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'discountPercentage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountCouponModel, DiscountCouponModel, QAfterFilterCondition>
      discountPercentageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'discountPercentage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountCouponModel, DiscountCouponModel, QAfterFilterCondition>
      discountPercentageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'discountPercentage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiscountCouponModel, DiscountCouponModel, QAfterFilterCondition>
      discountPercentageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discountPercentage',
        value: '',
      ));
    });
  }

  QueryBuilder<DiscountCouponModel, DiscountCouponModel, QAfterFilterCondition>
      discountPercentageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'discountPercentage',
        value: '',
      ));
    });
  }
}

extension DiscountCouponModelQueryObject on QueryBuilder<DiscountCouponModel,
    DiscountCouponModel, QFilterCondition> {}
