import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/domain/entities/failure/failure.dart';

abstract interface class AuthLocalDataSource {
  Future<void> setIsSignedInAsGuest(bool isSignedInAsGuest);
  Future<bool> getIsSignedInAsGuest();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SharedPreferences _sharedPreferences;

  const AuthLocalDataSourceImpl({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  @override
  Future<bool> getIsSignedInAsGuest() async {
    try {
      final bool isSignedInAsGuest =
          _sharedPreferences.getBool('isSignedInAsGuest') ?? false;
      return isSignedInAsGuest;
    } on Exception catch (e) {
      throw CacheFailure(message: e.toString());
    }
  }

  @override
  Future<void> setIsSignedInAsGuest(bool isSignedInAsGuest) async {
    try {
      await _sharedPreferences.setBool('isSignedInAsGuest', isSignedInAsGuest);
    } on Exception catch (e) {
      throw CacheFailure(message: e.toString());
    }
  }
}
