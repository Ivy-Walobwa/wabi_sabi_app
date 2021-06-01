import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/auth/value_objects.dart';
import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/auth_facade_interface.dart';

part 'sign_in_form_event.dart';

part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final AuthFacadeInterface _authFacadeInterface;

  SignInFormBloc(this._authFacadeInterface) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
        emailChanged: (e) async* {
          yield state.copyWith(
              emailAddress: EmailAddress(e.emailString),
              authFailureOrSuccess: none());
        },

        passwordChanged: (e) async* {
          yield state.copyWith(
              password: Password(e.passwordString),
              authFailureOrSuccess: none());
        },

        registerWithEmailAndPasswordPressed: (e) async* {
          yield* performAuthEmailAndPasswordAction(_authFacadeInterface.registerWithEmailAndPassword);
        },

        signInWithEmailAndPasswordPressed: (e) async* {
          yield* performAuthEmailAndPasswordAction(_authFacadeInterface.signInWithEmailAndPassword);

        },

        signInWithGooglePressed: (e) async* {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccess: none(),
          );

          final failureOrSuccess =
              await _authFacadeInterface.signInWithGoogle();

          yield state.copyWith(
              isSubmitting: false,
              authFailureOrSuccess: some(failureOrSuccess));
        });
  }

  Stream<SignInFormState> performAuthEmailAndPasswordAction(
    Future<Either<AuthFailure, Unit>> actionFunction({
      required EmailAddress emailAddress,
      required Password password,
    }),
  ) async* {
    final isValidEmail = state.emailAddress.isValid();
    final isValidPassword = state.password.isValid();

    if (isValidEmail && isValidPassword) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccess: none(),
      );

      final failureOrSuccess =
          await actionFunction(emailAddress:state.emailAddress, password:state.password);

      yield state.copyWith(
          isSubmitting: false, authFailureOrSuccess: some(failureOrSuccess));
    }

    yield state.copyWith(
      showError: true,
      authFailureOrSuccess: none(),
    );
  }
}
