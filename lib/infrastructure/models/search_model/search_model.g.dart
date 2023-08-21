// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchModel> _$searchModelSerializer = new _$SearchModelSerializer();
Serializer<Results> _$resultsSerializer = new _$ResultsSerializer();

class _$SearchModelSerializer implements StructuredSerializer<SearchModel> {
  @override
  final Iterable<Type> types = const [SearchModel, _$SearchModel];
  @override
  final String wireName = 'SearchModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, SearchModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.next;
    if (value != null) {
      result
        ..add('next')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.previous;
    if (value != null) {
      result
        ..add('previous')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Results)])));
    }
    return result;
  }

  @override
  SearchModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'next':
          result.next = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'previous':
          result.previous = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Results)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ResultsSerializer implements StructuredSerializer<Results> {
  @override
  final Iterable<Type> types = const [Results, _$Results];
  @override
  final String wireName = 'Results';

  @override
  Iterable<Object?> serialize(Serializers serializers, Results object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Category)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shortDescription;
    if (value != null) {
      result
        ..add('short_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
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
    value = object.publish;
    if (value != null) {
      result
        ..add('publish')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.getImageMediumUrl;
    if (value != null) {
      result
        ..add('get_image_medium_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numberOfViews;
    if (value != null) {
      result
        ..add('number_of_views')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.language;
    if (value != null) {
      result
        ..add('language')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Results deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ResultsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'category':
          result.category.replace(serializers.deserialize(value,
              specifiedType: const FullType(Category))! as Category);
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'short_description':
          result.shortDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'publish':
          result.publish = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'get_image_medium_url':
          result.getImageMediumUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number_of_views':
          result.numberOfViews = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchModel extends SearchModel {
  @override
  final int? count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final BuiltList<Results>? results;

  factory _$SearchModel([void Function(SearchModelBuilder)? updates]) =>
      (new SearchModelBuilder()..update(updates))._build();

  _$SearchModel._({this.count, this.next, this.previous, this.results})
      : super._();

  @override
  SearchModel rebuild(void Function(SearchModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchModelBuilder toBuilder() => new SearchModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchModel &&
        count == other.count &&
        next == other.next &&
        previous == other.previous &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, next.hashCode);
    _$hash = $jc(_$hash, previous.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchModel')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class SearchModelBuilder implements Builder<SearchModel, SearchModelBuilder> {
  _$SearchModel? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  ListBuilder<Results>? _results;
  ListBuilder<Results> get results =>
      _$this._results ??= new ListBuilder<Results>();
  set results(ListBuilder<Results>? results) => _$this._results = results;

  SearchModelBuilder();

  SearchModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _next = $v.next;
      _previous = $v.previous;
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchModel;
  }

  @override
  void update(void Function(SearchModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchModel build() => _build();

  _$SearchModel _build() {
    _$SearchModel _$result;
    try {
      _$result = _$v ??
          new _$SearchModel._(
              count: count,
              next: next,
              previous: previous,
              results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SearchModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Results extends Results {
  @override
  final Category? category;
  @override
  final String? title;
  @override
  final String? shortDescription;
  @override
  final String? description;
  @override
  final String? slug;
  @override
  final String? publish;
  @override
  final String? getImageMediumUrl;
  @override
  final int? numberOfViews;
  @override
  final String? language;

  factory _$Results([void Function(ResultsBuilder)? updates]) =>
      (new ResultsBuilder()..update(updates))._build();

  _$Results._(
      {this.category,
      this.title,
      this.shortDescription,
      this.description,
      this.slug,
      this.publish,
      this.getImageMediumUrl,
      this.numberOfViews,
      this.language})
      : super._();

  @override
  Results rebuild(void Function(ResultsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResultsBuilder toBuilder() => new ResultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Results &&
        category == other.category &&
        title == other.title &&
        shortDescription == other.shortDescription &&
        description == other.description &&
        slug == other.slug &&
        publish == other.publish &&
        getImageMediumUrl == other.getImageMediumUrl &&
        numberOfViews == other.numberOfViews &&
        language == other.language;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, shortDescription.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jc(_$hash, publish.hashCode);
    _$hash = $jc(_$hash, getImageMediumUrl.hashCode);
    _$hash = $jc(_$hash, numberOfViews.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Results')
          ..add('category', category)
          ..add('title', title)
          ..add('shortDescription', shortDescription)
          ..add('description', description)
          ..add('slug', slug)
          ..add('publish', publish)
          ..add('getImageMediumUrl', getImageMediumUrl)
          ..add('numberOfViews', numberOfViews)
          ..add('language', language))
        .toString();
  }
}

class ResultsBuilder implements Builder<Results, ResultsBuilder> {
  _$Results? _$v;

  CategoryBuilder? _category;
  CategoryBuilder get category => _$this._category ??= new CategoryBuilder();
  set category(CategoryBuilder? category) => _$this._category = category;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _shortDescription;
  String? get shortDescription => _$this._shortDescription;
  set shortDescription(String? shortDescription) =>
      _$this._shortDescription = shortDescription;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _publish;
  String? get publish => _$this._publish;
  set publish(String? publish) => _$this._publish = publish;

  String? _getImageMediumUrl;
  String? get getImageMediumUrl => _$this._getImageMediumUrl;
  set getImageMediumUrl(String? getImageMediumUrl) =>
      _$this._getImageMediumUrl = getImageMediumUrl;

  int? _numberOfViews;
  int? get numberOfViews => _$this._numberOfViews;
  set numberOfViews(int? numberOfViews) =>
      _$this._numberOfViews = numberOfViews;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  ResultsBuilder();

  ResultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _category = $v.category?.toBuilder();
      _title = $v.title;
      _shortDescription = $v.shortDescription;
      _description = $v.description;
      _slug = $v.slug;
      _publish = $v.publish;
      _getImageMediumUrl = $v.getImageMediumUrl;
      _numberOfViews = $v.numberOfViews;
      _language = $v.language;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Results;
  }

  @override
  void update(void Function(ResultsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Results build() => _build();

  _$Results _build() {
    _$Results _$result;
    try {
      _$result = _$v ??
          new _$Results._(
              category: _category?.build(),
              title: title,
              shortDescription: shortDescription,
              description: description,
              slug: slug,
              publish: publish,
              getImageMediumUrl: getImageMediumUrl,
              numberOfViews: numberOfViews,
              language: language);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'category';
        _category?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Results', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
