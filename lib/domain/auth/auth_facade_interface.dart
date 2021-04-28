import 'package:dartz/dartz.dart';

import 'value_objects.dart';
import 'auth_failure.dart';

abstract class AuthFacadeInterface{
  Future<Either<AuthFailure,Unit>> registerWithEmailAndPassword({
  required EmailAddress emailAddress, required Password password
});

  Future<Either<AuthFailure,Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress, required Password password
  });

  Future<Either<AuthFailure,Unit>> signInWithGoogle();

}