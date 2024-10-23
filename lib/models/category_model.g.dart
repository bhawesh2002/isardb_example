// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCategoryModelCollection on Isar {
  IsarCollection<CategoryModel> get categoryModels => this.collection();
}

const CategoryModelSchema = CollectionSchema(
  name: r'category',
  id: -7560358558326323820,
  properties: {
    r'categoryColor': PropertySchema(
      id: 0,
      name: r'categoryColor',
      type: IsarType.string,
    ),
    r'categoryImage': PropertySchema(
      id: 1,
      name: r'categoryImage',
      type: IsarType.string,
    ),
    r'categoryName': PropertySchema(
      id: 2,
      name: r'categoryName',
      type: IsarType.string,
    )
  },
  estimateSize: _categoryModelEstimateSize,
  serialize: _categoryModelSerialize,
  deserialize: _categoryModelDeserialize,
  deserializeProp: _categoryModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _categoryModelGetId,
  getLinks: _categoryModelGetLinks,
  attach: _categoryModelAttach,
  version: '3.1.0+1',
);

int _categoryModelEstimateSize(
  CategoryModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.color.length * 3;
  {
    final value = object.image;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _categoryModelSerialize(
  CategoryModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.color);
  writer.writeString(offsets[1], object.image);
  writer.writeString(offsets[2], object.name);
}

CategoryModel _categoryModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CategoryModel(
    color: reader.readString(offsets[0]),
    image: reader.readStringOrNull(offsets[1]),
    name: reader.readString(offsets[2]),
  );
  return object;
}

P _categoryModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _categoryModelGetId(CategoryModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _categoryModelGetLinks(CategoryModel object) {
  return [];
}

void _categoryModelAttach(
    IsarCollection<dynamic> col, Id id, CategoryModel object) {}

extension CategoryModelQueryWhereSort
    on QueryBuilder<CategoryModel, CategoryModel, QWhere> {
  QueryBuilder<CategoryModel, CategoryModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CategoryModelQueryWhere
    on QueryBuilder<CategoryModel, CategoryModel, QWhereClause> {
  QueryBuilder<CategoryModel, CategoryModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<CategoryModel, CategoryModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterWhereClause> idBetween(
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
}

extension CategoryModelQueryFilter
    on QueryBuilder<CategoryModel, CategoryModel, QFilterCondition> {
  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      colorEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      colorGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoryColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      colorLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoryColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      colorBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoryColor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      colorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'categoryColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      colorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'categoryColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      colorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categoryColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      colorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categoryColor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      colorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryColor',
        value: '',
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      colorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categoryColor',
        value: '',
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      imageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'categoryImage',
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      imageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'categoryImage',
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      imageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      imageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoryImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      imageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoryImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      imageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoryImage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      imageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'categoryImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      imageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'categoryImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      imageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categoryImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      imageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categoryImage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryImage',
        value: '',
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categoryImage',
        value: '',
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoryName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'categoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'categoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categoryName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryName',
        value: '',
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categoryName',
        value: '',
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
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

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition> idLessThan(
    Id value, {
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

  QueryBuilder<CategoryModel, CategoryModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
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
}

extension CategoryModelQueryObject
    on QueryBuilder<CategoryModel, CategoryModel, QFilterCondition> {}

extension CategoryModelQueryLinks
    on QueryBuilder<CategoryModel, CategoryModel, QFilterCondition> {}

extension CategoryModelQuerySortBy
    on QueryBuilder<CategoryModel, CategoryModel, QSortBy> {
  QueryBuilder<CategoryModel, CategoryModel, QAfterSortBy> sortByColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryColor', Sort.asc);
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterSortBy> sortByColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryColor', Sort.desc);
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterSortBy> sortByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryImage', Sort.asc);
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterSortBy> sortByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryImage', Sort.desc);
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryName', Sort.asc);
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryName', Sort.desc);
    });
  }
}

extension CategoryModelQuerySortThenBy
    on QueryBuilder<CategoryModel, CategoryModel, QSortThenBy> {
  QueryBuilder<CategoryModel, CategoryModel, QAfterSortBy> thenByColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryColor', Sort.asc);
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterSortBy> thenByColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryColor', Sort.desc);
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterSortBy> thenByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryImage', Sort.asc);
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterSortBy> thenByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryImage', Sort.desc);
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryName', Sort.asc);
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryName', Sort.desc);
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension CategoryModelQueryWhereDistinct
    on QueryBuilder<CategoryModel, CategoryModel, QDistinct> {
  QueryBuilder<CategoryModel, CategoryModel, QDistinct> distinctByColor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoryColor',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QDistinct> distinctByImage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoryImage',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CategoryModel, CategoryModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoryName', caseSensitive: caseSensitive);
    });
  }
}

extension CategoryModelQueryProperty
    on QueryBuilder<CategoryModel, CategoryModel, QQueryProperty> {
  QueryBuilder<CategoryModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CategoryModel, String, QQueryOperations> colorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoryColor');
    });
  }

  QueryBuilder<CategoryModel, String?, QQueryOperations> imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoryImage');
    });
  }

  QueryBuilder<CategoryModel, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoryName');
    });
  }
}
