// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:chopper/chopper.dart';

import '../serializers/serializer.dart';

class BuiltValueConverter extends JsonConverter {
  @override
  Request convertRequest(Request request) => super.convertRequest(
        request.copyWith(
          body: serializers.serializeWith(
            serializers.serializerForType(request.body.runtimeType)!,
            request.body,
          ),
        ),
      );

  @override
  Future<Response<BodyType>> convertResponse<BodyType, T>(
    Response response,
  ) async {
    final dynamicResponse = super.convertResponse(response);
    final customBody =
        _convertToObject<T>((await dynamicResponse).body) as BodyType;
    return (await dynamicResponse).copyWith<BodyType>(body: customBody);
  }

  dynamic _convertToObject<T>(element) {
    if (element is T) {
      return element;
    }
    if (element is List) {
      return _deserializeListOf<T>(element);
    }
    return _deserialize<T>(element as Map<String, dynamic>);
  }

  BuiltList<T> _deserializeListOf<T>(List dynamicList) => BuiltList<T>(
        dynamicList.map(
          (element) => _deserialize<T>(element as Map<String, dynamic>),
        ),
      );

  T _deserialize<T>(Map<String, dynamic> value) => serializers.deserializeWith(
        serializers.serializerForType(T) as Serializer<T>,
        value,
      )!;
}

class ErrorMyConverter implements ErrorConverter {
  @override
  FutureOr<Response> convertError<Detail, PaymentResult>(Response response) {
    var body = response.body;
    if (body.toString().length > 200) {
      throw UnimplementedError(
          body.toString().substring(0, 198).replaceAll("\n", " "));
    } else {
      if (body.toString().contains("\"detail\":")) {
        String bodyString = utf8.decode(response.bodyBytes);
        Map<String, dynamic> body = jsonDecode(bodyString);
        String data = body['detail'];
        throw UnimplementedError(data);
      } else {
        throw UnimplementedError(body.toString().replaceAll("\n", " "));
      }
    }
  }
}
