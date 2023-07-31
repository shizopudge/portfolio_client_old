import '../../../../core/constants/type_defs.dart';
import '../../../../core/domain/usecase/usecase.dart';
import '../repositories/auth_repository.dart';

class SetIsSignedInAsGuest
    implements UseCase<void, SetIsSignedInAsGuestParams> {
  final AuthRepository repository;

  const SetIsSignedInAsGuest(this.repository);
  @override
  FutureEither<void> call(SetIsSignedInAsGuestParams params) async =>
      repository.setIsSignedInAsGuest(params.isSignedInAsGuest);
}

class SetIsSignedInAsGuestParams {
  final bool isSignedInAsGuest;

  const SetIsSignedInAsGuestParams(this.isSignedInAsGuest);
}
