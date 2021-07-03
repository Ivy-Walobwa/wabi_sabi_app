import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:wabi_sabi_app/domain/core/value_objects.dart';

import '../../domain/auth/auth_facade_interface.dart';
import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/user.dart';
import '../../domain/auth/value_objects.dart';

@LazySingleton(as: AuthFacadeInterface)
class FirebaseAuthFacade implements AuthFacadeInterface {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn);

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailString, password: passwordString);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailString, password: passwordString);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUSer = await _googleSignIn.signIn();
      if (googleUSer == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUSer.authentication;
      final authCredentials = GoogleAuthProvider.credential(
          idToken: googleAuthentication.idToken,
          accessToken: googleAuthentication.accessToken);
      await _firebaseAuth.signInWithCredential(authCredentials);

      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<WabiUser>> getSignedInUser() async {
    final firebaseUser = _firebaseAuth.currentUser;
    if(firebaseUser != null){
      return some(WabiUser(
          id: UniqueID.fromUniqueString(firebaseUser.uid),
          emailAddress: EmailAddress(firebaseUser.email!)));
    }else{
      return none();
    }

  }

  @override
  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _firebaseAuth.signOut();
  }
}
