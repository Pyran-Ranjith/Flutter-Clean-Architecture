import 'package:fpdart/fpdart.dart';
import 'package:rivaan_ranawat_bloc_supabase_hive_getit/core/error/failures.dart';

abstract interface class Usecase<SuccessType, Parms> {
  Future<Either<Failure, SuccessType>> call(Parms parms);
}