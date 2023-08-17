// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CatsModel> _$catsModelSerializer = new _$CatsModelSerializer();
Serializer<CatModel> _$catModelSerializer = new _$CatModelSerializer();
Serializer<Status> _$statusSerializer = new _$StatusSerializer();

class _$CatsModelSerializer implements StructuredSerializer<CatsModel> {
  @override
  final Iterable<Type> types = const [CatsModel, _$CatsModel];
  @override
  final String wireName = 'CatsModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, CatsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'cats',
      serializers.serialize(object.cats,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CatModel)])),
    ];

    return result;
  }

  @override
  CatsModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CatsModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cats':
          result.cats.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CatModel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$CatModelSerializer implements StructuredSerializer<CatModel> {
  @override
  final Iterable<Type> types = const [CatModel, _$CatModel];
  @override
  final String wireName = 'CatModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, CatModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Status)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.v;
    if (value != null) {
      result
        ..add('__v')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.source;
    if (value != null) {
      result
        ..add('source')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updatedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.deleted;
    if (value != null) {
      result
        ..add('deleted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.used;
    if (value != null) {
      result
        ..add('used')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CatModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CatModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'status':
          result.status.replace(serializers.deserialize(value,
              specifiedType: const FullType(Status))! as Status);
          break;
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case '__v':
          result.v = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'source':
          result.source = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'deleted':
          result.deleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'used':
          result.used = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$StatusSerializer implements StructuredSerializer<Status> {
  @override
  final Iterable<Type> types = const [Status, _$Status];
  @override
  final String wireName = 'Status';

  @override
  Iterable<Object?> serialize(Serializers serializers, Status object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.verified;
    if (value != null) {
      result
        ..add('verified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.sentCount;
    if (value != null) {
      result
        ..add('sentCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Status deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StatusBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'verified':
          result.verified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'sentCount':
          result.sentCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$CatsModel extends CatsModel {
  @override
  final BuiltList<CatModel> cats;

  factory _$CatsModel([void Function(CatsModelBuilder)? updates]) =>
      (new CatsModelBuilder()..update(updates))._build();

  _$CatsModel._({required this.cats}) : super._() {
    BuiltValueNullFieldError.checkNotNull(cats, r'CatsModel', 'cats');
  }

  @override
  CatsModel rebuild(void Function(CatsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CatsModelBuilder toBuilder() => new CatsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CatsModel && cats == other.cats;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cats.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CatsModel')..add('cats', cats))
        .toString();
  }
}

class CatsModelBuilder implements Builder<CatsModel, CatsModelBuilder> {
  _$CatsModel? _$v;

  ListBuilder<CatModel>? _cats;
  ListBuilder<CatModel> get cats =>
      _$this._cats ??= new ListBuilder<CatModel>();
  set cats(ListBuilder<CatModel>? cats) => _$this._cats = cats;

  CatsModelBuilder();

  CatsModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cats = $v.cats.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CatsModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CatsModel;
  }

  @override
  void update(void Function(CatsModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CatsModel build() => _build();

  _$CatsModel _build() {
    _$CatsModel _$result;
    try {
      _$result = _$v ?? new _$CatsModel._(cats: cats.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cats';
        cats.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CatsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CatModel extends CatModel {
  @override
  final Status? status;
  @override
  final String? id;
  @override
  final int? v;
  @override
  final String? text;
  @override
  final String? source;
  @override
  final String? updatedAt;
  @override
  final String? type;
  @override
  final String? createdAt;
  @override
  final bool? deleted;
  @override
  final bool? used;
  @override
  final String? user;

  factory _$CatModel([void Function(CatModelBuilder)? updates]) =>
      (new CatModelBuilder()..update(updates))._build();

  _$CatModel._(
      {this.status,
      this.id,
      this.v,
      this.text,
      this.source,
      this.updatedAt,
      this.type,
      this.createdAt,
      this.deleted,
      this.used,
      this.user})
      : super._();

  @override
  CatModel rebuild(void Function(CatModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CatModelBuilder toBuilder() => new CatModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CatModel &&
        status == other.status &&
        id == other.id &&
        v == other.v &&
        text == other.text &&
        source == other.source &&
        updatedAt == other.updatedAt &&
        type == other.type &&
        createdAt == other.createdAt &&
        deleted == other.deleted &&
        used == other.used &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, v.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, source.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, deleted.hashCode);
    _$hash = $jc(_$hash, used.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CatModel')
          ..add('status', status)
          ..add('id', id)
          ..add('v', v)
          ..add('text', text)
          ..add('source', source)
          ..add('updatedAt', updatedAt)
          ..add('type', type)
          ..add('createdAt', createdAt)
          ..add('deleted', deleted)
          ..add('used', used)
          ..add('user', user))
        .toString();
  }
}

class CatModelBuilder implements Builder<CatModel, CatModelBuilder> {
  _$CatModel? _$v;

  StatusBuilder? _status;
  StatusBuilder get status => _$this._status ??= new StatusBuilder();
  set status(StatusBuilder? status) => _$this._status = status;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _v;
  int? get v => _$this._v;
  set v(int? v) => _$this._v = v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _source;
  String? get source => _$this._source;
  set source(String? source) => _$this._source = source;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  bool? _deleted;
  bool? get deleted => _$this._deleted;
  set deleted(bool? deleted) => _$this._deleted = deleted;

  bool? _used;
  bool? get used => _$this._used;
  set used(bool? used) => _$this._used = used;

  String? _user;
  String? get user => _$this._user;
  set user(String? user) => _$this._user = user;

  CatModelBuilder();

  CatModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status?.toBuilder();
      _id = $v.id;
      _v = $v.v;
      _text = $v.text;
      _source = $v.source;
      _updatedAt = $v.updatedAt;
      _type = $v.type;
      _createdAt = $v.createdAt;
      _deleted = $v.deleted;
      _used = $v.used;
      _user = $v.user;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CatModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CatModel;
  }

  @override
  void update(void Function(CatModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CatModel build() => _build();

  _$CatModel _build() {
    _$CatModel _$result;
    try {
      _$result = _$v ??
          new _$CatModel._(
              status: _status?.build(),
              id: id,
              v: v,
              text: text,
              source: source,
              updatedAt: updatedAt,
              type: type,
              createdAt: createdAt,
              deleted: deleted,
              used: used,
              user: user);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'status';
        _status?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CatModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Status extends Status {
  @override
  final bool? verified;
  @override
  final int? sentCount;

  factory _$Status([void Function(StatusBuilder)? updates]) =>
      (new StatusBuilder()..update(updates))._build();

  _$Status._({this.verified, this.sentCount}) : super._();

  @override
  Status rebuild(void Function(StatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatusBuilder toBuilder() => new StatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Status &&
        verified == other.verified &&
        sentCount == other.sentCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verified.hashCode);
    _$hash = $jc(_$hash, sentCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Status')
          ..add('verified', verified)
          ..add('sentCount', sentCount))
        .toString();
  }
}

class StatusBuilder implements Builder<Status, StatusBuilder> {
  _$Status? _$v;

  bool? _verified;
  bool? get verified => _$this._verified;
  set verified(bool? verified) => _$this._verified = verified;

  int? _sentCount;
  int? get sentCount => _$this._sentCount;
  set sentCount(int? sentCount) => _$this._sentCount = sentCount;

  StatusBuilder();

  StatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verified = $v.verified;
      _sentCount = $v.sentCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Status other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Status;
  }

  @override
  void update(void Function(StatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Status build() => _build();

  _$Status _build() {
    final _$result =
        _$v ?? new _$Status._(verified: verified, sentCount: sentCount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
