import 'package:chopper/chopper.dart';

import '../core/built_value_converter.dart';
import '../core/interceptors.dart';

part 'home_apis.chopper.dart';

@ChopperApi(baseUrl: '/')
abstract class HomeService extends ChopperService {
  static HomeService create() =>
      _$HomeService(_Client('https://garant-mobile.u', true));
}

// ! Client
class _Client extends ChopperClient {
  _Client(String baseUrl, bool useInterceptors)
      : super(
            baseUrl: Uri.parse(baseUrl),
            interceptors: useInterceptors
                ? [
                    HttpLoggingInterceptor(),
                    CurlInterceptor(),
                    NetworkInterceptor(),
                    BackendInterceptor(),
                    // CoreInterceptor(),
                  ]
                : const [],
            converter: BuiltValueConverter(),
            errorConverter: ErrorMyConverter());
}
