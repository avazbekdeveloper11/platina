// import 'dart:convert';
import 'package:platina/domain/common/token.dart';
// ignore: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceService {
  static const _accessToken = 'access_token';
  static const _refreshToken = 'refresh_token';
  static const _firstName = 'last_name';
  static const _lastName = 'first_name';
  static const _id = 'id';
  static const _isVendor = 'isVendor';
  static const _role = 'role';
  static const _profileImage = 'profileImage';
  static const _localeLang = 'localeLang';

  static SharedPreferences? _preferences;

  static Future<PreferenceService> get create async {
    _preferences ??= await SharedPreferences.getInstance();
    return PreferenceService();
  }

  void setToken(Token token) async {
    await _preferences?.setString(_accessToken, token.accessToken ?? '');
    await _preferences?.setString(_refreshToken, token.refreshToken ?? '');
  }

  void setUserData(String name, String surname) async {
    await _preferences?.setString(_firstName, name);
    await _preferences?.setString(_lastName, surname);
  }

  Token get token {
    final accessToken = _preferences?.getString(_accessToken);
    final refreshToken = _preferences?.getString(_refreshToken);

    return Token(accessToken: accessToken, refreshToken: refreshToken);
  }

  void setId(int? id) async {
    await _preferences?.setInt(_id, id ?? -1);
  }

  int get getId {
    final id = _preferences?.getInt(_id);

    return id ?? (-1);
  }

  void setLocale(String? localeLang) async {
    await _preferences?.setString(_localeLang, localeLang ?? 'uz');
  }

  String get getLocale {
    final localeLang = _preferences?.getString(_localeLang);

    return localeLang ?? 'uz';
  }

  void setRole(String? role) async {
    await _preferences?.setString(_role, role ?? "customer");
  }

  String get getRole {
    final role = _preferences?.getString(_role);

    return role ?? 'customer';
  }

  void setIsVendor(bool? isVendor) async {
    await _preferences?.setBool(_isVendor, isVendor ?? false);
  }

  bool get getIsVendor {
    final isVendor = _preferences?.getBool(_isVendor);

    return isVendor ?? (false);
  }

  void setProfileImage(String? profileImage) async {
    await _preferences?.setString(_profileImage, profileImage ?? '');
  }

  String get getProfileImage {
    final getProfileImage = _preferences?.getString(_profileImage);

    return getProfileImage ?? ('');
  }

  // void setDefaultAddress(Map<String, dynamic>? object) async {
  //   await _preferences?.setString(_defaultAddress, jsonEncode(object));
  // }
  //
  // SaveAddressModel? get getDefaultAddress {
  //   final address = _preferences?.getString(_defaultAddress);
  //   Map<String, dynamic>? map =
  //       address == null ? null : (jsonDecode(address) as Map<String, dynamic>);
  //
  //   return map == null ? null : SaveAddressModel.fromMap(map);
  // }

  void signOut() async => await _preferences?.clear();
}

// class SaveAddressModel {
//   int? region;
//   int? buildingNumber;
//   int? buildingFloor;
//   String? phoneNumber;
//   String? landmark;
//   bool? isDefault;
//   String? streetHome;
//
//   SaveAddressModel({
//     required this.region,
//     required this.buildingNumber,
//     required this.buildingFloor,
//     required this.phoneNumber,
//     required this.landmark,
//     required this.isDefault,
//     required this.streetHome,
//   });
//
//   Map<String, dynamic> toMap() {
//     return {
//       'region': region,
//       'buildingNumber': buildingNumber,
//       'buildingFloor': buildingFloor,
//       'phoneNumber': phoneNumber,
//       'landmark': landmark,
//       'isDefault': isDefault,
//       'streetHome': streetHome,
//     };
//   }
//
//   factory SaveAddressModel.fromMap(Map<String, dynamic> map) {
//     return SaveAddressModel(
//       region: map['region'] as int?,
//       buildingNumber: map['buildingNumber'] as int?,
//       buildingFloor: map['buildingFloor'] as int?,
//       phoneNumber: map['phoneNumber'] as String?,
//       landmark: map['landmark'] as String?,
//       isDefault: map['isDefault'] as bool?,
//       streetHome: map['streetHome'] as String?,
//     );
//   }
//
//   @override
//   String toString() {
//     return 'SaveAddressModel{region: $region, buildingNumber: $buildingNumber, buildingFloor: $buildingFloor, phoneNumber: $phoneNumber, landmark: $landmark, isDefault: $isDefault, streetHome: $streetHome}';
//   }
// }
