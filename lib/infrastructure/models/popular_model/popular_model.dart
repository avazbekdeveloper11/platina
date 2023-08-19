library popular_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:platina/infrastructure/serializers/serializer.dart';

part 'popular_model.g.dart';

abstract class PopularModel
    implements Built<PopularModel, PopularModelBuilder> {
  PopularModel._();

  factory PopularModel([Function(PopularModelBuilder b) updates]) =
      _$PopularModel;

  @BuiltValueField(wireName: 'count')
  int? get count;
  @BuiltValueField(wireName: 'next')
  String? get next;
  @BuiltValueField(wireName: 'previous')
  String? get previous;
  @BuiltValueField(wireName: 'results')
  BuiltList<PopularModelResult>? get results;
  String toJson() {
    return json
        .encode(serializers.serializeWith(PopularModel.serializer, this));
  }

  static PopularModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        PopularModel.serializer, json.decode(jsonString));
  }

  static Serializer<PopularModel> get serializer => _$popularModelSerializer;
}

abstract class PopularModelResult
    implements Built<PopularModelResult, PopularModelResultBuilder> {
  PopularModelResult._();

  factory PopularModelResult([Function(PopularModelResultBuilder b) updates]) =
      _$PopularModelResult;

  @BuiltValueField(wireName: 'id')
  int? get id;
  @BuiltValueField(wireName: 'category')
  Category? get category;
  @BuiltValueField(wireName: 'title')
  String? get title;
  @BuiltValueField(wireName: 'short_description')
  String? get shortDescription;
  @BuiltValueField(wireName: 'relates_to')
  String? get relatesTo;
  @BuiltValueField(wireName: 'description')
  String? get description;
  @BuiltValueField(wireName: 'slug')
  String? get slug;
  @BuiltValueField(wireName: 'author_offered')
  bool? get authorOffered;
  @BuiltValueField(wireName: 'publish')
  String? get publish;
  @BuiltValueField(wireName: 'is_pinned')
  bool? get isPinned;
  @BuiltValueField(wireName: 'number_of_views')
  int? get numberOfViews;
  @BuiltValueField(wireName: 'image')
  String? get image;
  @BuiltValueField(wireName: 'image_extra_large')
  String? get imageExtraLarge;
  @BuiltValueField(wireName: 'image_large')
  String? get imageLarge;
  @BuiltValueField(wireName: 'image_medium')
  String? get imageMedium;
  @BuiltValueField(wireName: 'image_small')
  String? get imageSmall;
  @BuiltValueField(wireName: 'image_source')
  String? get imageSource;
  @BuiltValueField(wireName: 'image_name')
  String? get imageName;
  @BuiltValueField(wireName: 'gallery')
  BuiltList<Gallery>? get gallery;
  @BuiltValueField(wireName: 'short_url')
  String? get shortUrl;
  @BuiltValueField(wireName: 'youtube_link')
  String? get youtubeLink;
  @BuiltValueField(wireName: 'tags')
  BuiltList<String>? get tags;
  @BuiltValueField(wireName: 'expired_at')
  String? get expiredAt;
  @BuiltValueField(wireName: 'language')
  String? get language;
  String toJson() {
    return json
        .encode(serializers.serializeWith(PopularModelResult.serializer, this));
  }

  static PopularModelResult? fromJson(String jsonString) {
    return serializers.deserializeWith(
        PopularModelResult.serializer, json.decode(jsonString));
  }

  static Serializer<PopularModelResult> get serializer =>
      _$popularModelResultSerializer;
}

abstract class Category implements Built<Category, CategoryBuilder> {
  Category._();

  factory Category([Function(CategoryBuilder b) updates]) = _$Category;

  @BuiltValueField(wireName: 'id')
  int? get id;
  @BuiltValueField(wireName: 'name')
  String? get name;
  @BuiltValueField(wireName: 'slug')
  String? get slug;
  @BuiltValueField(wireName: 'color')
  String? get color;
  String toJson() {
    return json.encode(serializers.serializeWith(Category.serializer, this));
  }

  static Category? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Category.serializer, json.decode(jsonString));
  }

  static Serializer<Category> get serializer => _$categorySerializer;
}

abstract class Gallery implements Built<Gallery, GalleryBuilder> {
  Gallery._();

  factory Gallery([Function(GalleryBuilder b) updates]) = _$Gallery;

  @BuiltValueField(wireName: 'image')
  String? get image;
  String toJson() {
    return json.encode(serializers.serializeWith(Gallery.serializer, this));
  }

  static Gallery? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Gallery.serializer, json.decode(jsonString));
  }

  static Serializer<Gallery> get serializer => _$gallerySerializer;
}
