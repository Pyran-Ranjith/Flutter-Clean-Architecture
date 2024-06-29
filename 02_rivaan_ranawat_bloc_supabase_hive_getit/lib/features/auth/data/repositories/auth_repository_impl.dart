// import 'package:fpdart/src/either.dart';

import 'package:fpdart/fpdart.dart';
import 'package:rivaan_ranawat_bloc_supabase_hive_getit/core/error/exceptions.dart';
import 'package:rivaan_ranawat_bloc_supabase_hive_getit/core/error/failures.dart';
import 'package:rivaan_ranawat_bloc_supabase_hive_getit/features/auth/data/datasources/auth_remote_data_source.dart';

import '../../domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, String>> logInWithEmailPassword(
      {required String email, required String password}) {
    // TODO: implement logInWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final userId = await remoteDataSource.signUpWithEmailPassword(
        name: name,
        email: email,
        password: password,
      );
      return right(userId);
    } on ServerException catch (e) {
      return left(Failure(e.message));
    }
    throw UnimplementedError();
  }
}
