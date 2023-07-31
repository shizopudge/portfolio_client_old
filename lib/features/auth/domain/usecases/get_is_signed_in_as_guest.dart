import '../../../../core/constants/type_defs.dart';
import '../../../../core/domain/usecase/usecase.dart';
import '../repositories/auth_repository.dart';

class GetIsSignedInAsGuest implements UseCase<bool, NoParams> {
  final AuthRepository repository;

  const GetIsSignedInAsGuest(this.repository);
  @override
  FutureEither<bool> call(NoParams params) async =>
      repository.getIsSignedInAsGuest();
}
