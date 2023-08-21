library search_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:platina/infrastructure/models/popular_model/popular_model.dart';
import 'package:platina/infrastructure/serializers/serializer.dart';

part 'search_model.g.dart';

abstract class SearchModel implements Built<SearchModel, SearchModelBuilder> {
  SearchModel._();

  factory SearchModel([Function(SearchModelBuilder b) updates]) = _$SearchModel;

  @BuiltValueField(wireName: 'count')
  int? get count;
  @BuiltValueField(wireName: 'next')
  String? get next;
  @BuiltValueField(wireName: 'previous')
  String? get previous;
  @BuiltValueField(wireName: 'results')
  BuiltList<Results>? get results;
  String toJson() {
    return json.encode(serializers.serializeWith(SearchModel.serializer, this));
  }

  static SearchModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        SearchModel.serializer, json.decode(jsonString));
  }

  static Serializer<SearchModel> get serializer => _$searchModelSerializer;
}

abstract class Results implements Built<Results, ResultsBuilder> {
  Results._();

  factory Results([Function(ResultsBuilder b) updates]) = _$Results;

  @BuiltValueField(wireName: 'category')
  Category? get category;
  @BuiltValueField(wireName: 'title')
  String? get title;
  @BuiltValueField(wireName: 'short_description')
  String? get shortDescription;
  @BuiltValueField(wireName: 'description')
  String? get description;
  @BuiltValueField(wireName: 'slug')
  String? get slug;
  @BuiltValueField(wireName: 'publish')
  String? get publish;
  @BuiltValueField(wireName: 'get_image_medium_url')
  String? get getImageMediumUrl;
  @BuiltValueField(wireName: 'number_of_views')
  int? get numberOfViews;
  @BuiltValueField(wireName: 'language')
  String? get language;
  String toJson() {
    return json.encode(serializers.serializeWith(Results.serializer, this));
  }

  static Results? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Results.serializer, json.decode(jsonString));
  }

  static Serializer<Results> get serializer => _$resultsSerializer;
}
