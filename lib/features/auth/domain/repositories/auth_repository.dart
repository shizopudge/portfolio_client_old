import '../../../../core/constants/type_defs.dart';

abstract interface class AuthRepository {
  FutureEither<void> setIsSignedInAsGuest(bool isSignedInAsGuest);
  FutureEither<bool> getIsSignedInAsGuest();
}
