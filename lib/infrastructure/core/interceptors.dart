import 'dart:async';
import 'package:chopper/chopper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:platina/domain/common/connectevity_extensions.dart';
import 'exceptions.dart';

class NetworkInterceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) async {
    final connectivity = await MyConnectivity().create();

    if (!connectivity) {
      throw NetworkException();
    }
    return request;
  }
}

class BackendInterceptor implements ResponseInterceptor {
  @override
  FutureOr<Response> onResponse(Response response) {
    if (response.statusCode >= 500) {
      throw BackendException();
    }
    return response;
  }
}

class CoreInterceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) async {
    final headers = Map<String, String>.from(request.headers);
    headers['Accept-Language'] = 'uz'.tr();
    Request newRequest = request.copyWith(headers: headers);
    return newRequest;
  }
}
