import 'package:dartz/dartz.dart';

import 'auth_failure.dart';
import 'user.dart';
import 'value_objects.dart';

abstract class AuthFacadeInterface{
  Future<Option<WabiUser>> getSignedInUser();

  Future<Either<AuthFailure,Unit>> registerWithEmailAndPassword({
  required EmailAddress emailAddress, required Password password
});

  Future<Either<AuthFailure,Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress, required Password password
  });

  Future<Either<AuthFailure,Unit>> signInWithGoogle();

  Future<void> signOut();
}