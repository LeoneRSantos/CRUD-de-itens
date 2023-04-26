// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transacao.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTransacaoCollection on Isar {
  IsarCollection<Transacao> get transacaos => this.collection();
}

const TransacaoSchema = CollectionSchema(
  name: r'Transacao',
  id: -4675131500292607103,
  properties: {
    r'eCompra': PropertySchema(
      id: 0,
      name: r'eCompra',
      type: IsarType.bool,
    ),
    r'titulo': PropertySchema(
      id: 1,
      name: r'titulo',
      type: IsarType.string,
    ),
    r'valor': PropertySchema(
      id: 2,
      name: r'valor',
      type: IsarType.double,
    )
  },
  estimateSize: _transacaoEstimateSize,
  serialize: _transacaoSerialize,
  deserialize: _transacaoDeserialize,
  deserializeProp: _transacaoDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _transacaoGetId,
  getLinks: _transacaoGetLinks,
  attach: _transacaoAttach,
  version: '3.1.0+1',
);

int _transacaoEstimateSize(
  Transacao object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.titulo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _transacaoSerialize(
  Transacao object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.eCompra);
  writer.writeString(offsets[1], object.titulo);
  writer.writeDouble(offsets[2], object.valor);
}

Transacao _transacaoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Transacao();
  object.eCompra = reader.readBoolOrNull(offsets[0]);
  object.id = id;
  object.titulo = reader.readStringOrNull(offsets[1]);
  object.valor = reader.readDoubleOrNull(offsets[2]);
  return object;
}

P _transacaoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _transacaoGetId(Transacao object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _transacaoGetLinks(Transacao object) {
  return [];
}

void _transacaoAttach(IsarCollection<dynamic> col, Id id, Transacao object) {
  object.id = id;
}

extension TransacaoQueryWhereSort
    on QueryBuilder<Transacao, Transacao, QWhere> {
  QueryBuilder<Transacao, Transacao, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TransacaoQueryWhere
    on QueryBuilder<Transacao, Transacao, QWhereClause> {
  QueryBuilder<Transacao, Transacao, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Transacao, Transacao, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterWhereClause> idBetween(
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

extension TransacaoQueryFilter
    on QueryBuilder<Transacao, Transacao, QFilterCondition> {
  QueryBuilder<Transacao, Transacao, QAfterFilterCondition> eCompraIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'eCompra',
      ));
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterFilterCondition> eCompraIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'eCompra',
      ));
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterFilterCondition> eCompraEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eCompra',
        value: value,
      ));
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Transacao, Transacao, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Transacao, Transacao, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Transacao, Transacao, QAfterFilterCondition> tituloIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'titulo',
      ));
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterFilterCondition> tituloIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'titulo',
      ));
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterFilterCondition> tituloEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterFilterCondition> tituloGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterFilterCondition> tituloLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterFilterCondition> tituloBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'titulo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterFilterCondition> tituloStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterFilterCondition> tituloEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterFilterCondition> tituloContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterFilterCondition> tituloMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'titulo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterFilterCondition> tituloIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titulo',
        value: '',
      ));
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterFilterCondition> tituloIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'titulo',
        value: '',
      ));
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterFilterCondition> valorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'valor',
      ));
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterFilterCondition> valorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'valor',
      ));
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterFilterCondition> valorEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valor',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterFilterCondition> valorGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'valor',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterFilterCondition> valorLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'valor',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterFilterCondition> valorBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'valor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension TransacaoQueryObject
    on QueryBuilder<Transacao, Transacao, QFilterCondition> {}

extension TransacaoQueryLinks
    on QueryBuilder<Transacao, Transacao, QFilterCondition> {}

extension TransacaoQuerySortBy on QueryBuilder<Transacao, Transacao, QSortBy> {
  QueryBuilder<Transacao, Transacao, QAfterSortBy> sortByECompra() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eCompra', Sort.asc);
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterSortBy> sortByECompraDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eCompra', Sort.desc);
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterSortBy> sortByTitulo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titulo', Sort.asc);
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterSortBy> sortByTituloDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titulo', Sort.desc);
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterSortBy> sortByValor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'valor', Sort.asc);
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterSortBy> sortByValorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'valor', Sort.desc);
    });
  }
}

extension TransacaoQuerySortThenBy
    on QueryBuilder<Transacao, Transacao, QSortThenBy> {
  QueryBuilder<Transacao, Transacao, QAfterSortBy> thenByECompra() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eCompra', Sort.asc);
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterSortBy> thenByECompraDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eCompra', Sort.desc);
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterSortBy> thenByTitulo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titulo', Sort.asc);
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterSortBy> thenByTituloDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titulo', Sort.desc);
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterSortBy> thenByValor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'valor', Sort.asc);
    });
  }

  QueryBuilder<Transacao, Transacao, QAfterSortBy> thenByValorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'valor', Sort.desc);
    });
  }
}

extension TransacaoQueryWhereDistinct
    on QueryBuilder<Transacao, Transacao, QDistinct> {
  QueryBuilder<Transacao, Transacao, QDistinct> distinctByECompra() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eCompra');
    });
  }

  QueryBuilder<Transacao, Transacao, QDistinct> distinctByTitulo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'titulo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Transacao, Transacao, QDistinct> distinctByValor() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'valor');
    });
  }
}

extension TransacaoQueryProperty
    on QueryBuilder<Transacao, Transacao, QQueryProperty> {
  QueryBuilder<Transacao, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Transacao, bool?, QQueryOperations> eCompraProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eCompra');
    });
  }

  QueryBuilder<Transacao, String?, QQueryOperations> tituloProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'titulo');
    });
  }

  QueryBuilder<Transacao, double?, QQueryOperations> valorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'valor');
    });
  }
}
