import 'package:fpdart/src/either.dart';
import 'package:rivaan_ranawat_bloc_supabase_hive_getit/core/error/failures.dart';
import 'package:rivaan_ranawat_bloc_supabase_hive_getit/core/usecase/usecase.dart';

class UserSignUp implements Usecase<String, UserSignUpParms> {
  @override
  Future<Either<Failure, String>> call(UserSignUpParms parms) async {
    
    throw UnimplementedError();
  }
}

class UserSignUpParms {
  final String email;
  final String password;
  final String name;

  UserSignUpParms(
    this.email, 
    this.password, 
    this.name);
}
