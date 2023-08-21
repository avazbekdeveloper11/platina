library categories_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:platina/infrastructure/serializers/serializer.dart';

part 'categories_model.g.dart';

abstract class CategoriesModel
    implements Built<CategoriesModel, CategoriesModelBuilder> {
  CategoriesModel._();

  factory CategoriesModel([Function(CategoriesModelBuilder b) updates]) =
      _$CategoriesModel;

  @BuiltValueField(wireName: 'id')
  int? get id;
  @BuiltValueField(wireName: 'name')
  String? get name;
  @BuiltValueField(wireName: 'slug')
  String? get slug;
  @BuiltValueField(wireName: 'color')
  String? get color;
  String toJson() {
    return json
        .encode(serializers.serializeWith(CategoriesModel.serializer, this));
  }

  static CategoriesModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        CategoriesModel.serializer, json.decode(jsonString));
  }

  static Serializer<CategoriesModel> get serializer =>
      _$categoriesModelSerializer;
}
