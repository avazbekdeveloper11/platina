import 'package:platina/domain/common/connectevity_extensions.dart';

class ConnectivityX {
  static Future<bool> get create async {
    final connectivity = MyConnectivity();

    return await connectivity.create();
  }
}
