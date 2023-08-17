// import 'package:platina/infrastructure/models/cat/cat_model.dart';
// import 'package:chopper/chopper.dart';

// import '../core/built_value_converter.dart';
// import '../core/interceptors.dart';

// part 'cat_apis.chopper.dart';



// @ChopperApi(baseUrl: "/api/v1/")
// abstract class BannerListService extends ChopperService {
//   @Get(path: "banner/?&width={width}&height={height}")
//   Future<Response<BannerListModel>> getBannerList(
//      {@Path('width') required int width,
//     @Path('height') required int height}
//      );

//   static BannerListService create() =>
//       _$BannerListService(_Client(baseUrl, true));
// }



// class _Client extends ChopperClient {
//   _Client(String baseUrl, bool useInterceptors)
//       : super(
//             baseUrl: Uri.parse(baseUrl),
//             interceptors: useInterceptors
//                 ? [
//                     HttpLoggingInterceptor(),
//                     CurlInterceptor(),
//                     NetworkInterceptor(),
//                     BackendInterceptor(),
//                   ]
//                 : const [],
//             converter: BuiltValueConverter(),
//             errorConverter: ErrorMyConverter());
// }
