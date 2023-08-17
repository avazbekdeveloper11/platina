import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:platina/infrastructure/serializers/serializer.dart';
import 'package:built_collection/built_collection.dart';
part 'cat_model.g.dart';

abstract class CatsModel implements Built<CatsModel, CatsModelBuilder> {
  BuiltList<CatModel> get cats;

  CatsModel._();
  factory CatsModel([Function(CatsModelBuilder b) updates]) = _$CatsModel;

  String toJson() {
    return json.encode(serializers.serializeWith(CatsModel.serializer, this));
  }

  static CatsModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        CatsModel.serializer, json.decode(jsonString));
  }

  static Serializer<CatsModel> get serializer => _$catsModelSerializer;
}

abstract class CatModel implements Built<CatModel, CatModelBuilder> {
  CatModel._();

  factory CatModel([Function(CatModelBuilder b) updates]) = _$CatModel;

  @BuiltValueField(wireName: 'status')
  Status? get status;
  @BuiltValueField(wireName: '_id')
  String? get id;
  @BuiltValueField(wireName: '__v')
  int? get v;
  @BuiltValueField(wireName: 'text')
  String? get text;
  @BuiltValueField(wireName: 'source')
  String? get source;
  @BuiltValueField(wireName: 'updatedAt')
  String? get updatedAt;
  @BuiltValueField(wireName: 'type')
  String? get type;
  @BuiltValueField(wireName: 'createdAt')
  String? get createdAt;
  @BuiltValueField(wireName: 'deleted')
  bool? get deleted;
  @BuiltValueField(wireName: 'used')
  bool? get used;
  @BuiltValueField(wireName: 'user')
  String? get user;

  static Serializer<CatModel> get serializer => _$catModelSerializer;
}

abstract class Status implements Built<Status, StatusBuilder> {
  Status._();

  factory Status([Function(StatusBuilder b) updates]) = _$Status;

  @BuiltValueField(wireName: 'verified')
  bool? get verified;
  @BuiltValueField(wireName: 'sentCount')
  int? get sentCount;

  static Serializer<Status> get serializer => _$statusSerializer;
}
