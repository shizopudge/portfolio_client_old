import 'package:dartz/dartz.dart';

import '../../../../core/constants/type_defs.dart';
import '../../../../core/domain/entities/failure/failure.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_local_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthLocalDataSource localDataSource;

  const AuthRepositoryImpl({
    required this.localDataSource,
  });

  @override
  FutureEither<bool> getIsSignedInAsGuest() async {
    try {
      final bool isSignedInAsGuest =
          await localDataSource.getIsSignedInAsGuest();
      return Right(isSignedInAsGuest);
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(CasualFailure(message: e.toString()));
    }
  }

  @override
  FutureEither<void> setIsSignedInAsGuest(bool isSignedInAsGuest) async {
    try {
      await localDataSource.setIsSignedInAsGuest(isSignedInAsGuest);
      return const Right(null);
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(CasualFailure(message: e.toString()));
    }
  }
}
