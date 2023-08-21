// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoriesModel> _$categoriesModelSerializer =
    new _$CategoriesModelSerializer();

class _$CategoriesModelSerializer
    implements StructuredSerializer<CategoriesModel> {
  @override
  final Iterable<Type> types = const [CategoriesModel, _$CategoriesModel];
  @override
  final String wireName = 'CategoriesModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, CategoriesModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.slug;
    if (value != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.color;
    if (value != null) {
      result
        ..add('color')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CategoriesModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriesModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$CategoriesModel extends CategoriesModel {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? slug;
  @override
  final String? color;

  factory _$CategoriesModel([void Function(CategoriesModelBuilder)? updates]) =>
      (new CategoriesModelBuilder()..update(updates))._build();

  _$CategoriesModel._({this.id, this.name, this.slug, this.color}) : super._();

  @override
  CategoriesModel rebuild(void Function(CategoriesModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriesModelBuilder toBuilder() =>
      new CategoriesModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriesModel &&
        id == other.id &&
        name == other.name &&
        slug == other.slug &&
        color == other.color;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoriesModel')
          ..add('id', id)
          ..add('name', name)
          ..add('slug', slug)
          ..add('color', color))
        .toString();
  }
}

class CategoriesModelBuilder
    implements Builder<CategoriesModel, CategoriesModelBuilder> {
  _$CategoriesModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  CategoriesModelBuilder();

  CategoriesModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _slug = $v.slug;
      _color = $v.color;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoriesModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoriesModel;
  }

  @override
  void update(void Function(CategoriesModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoriesModel build() => _build();

  _$CategoriesModel _build() {
    final _$result = _$v ??
        new _$CategoriesModel._(id: id, name: name, slug: slug, color: color);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
