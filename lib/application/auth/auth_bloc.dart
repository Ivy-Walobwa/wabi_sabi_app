import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/auth/auth_facade_interface.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthFacadeInterface _authFacadeInterface;

  AuthBloc(this._authFacadeInterface) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
        authCheckRequested: (e) async* {
          final userOption = await _authFacadeInterface.getSignedInUser();
          yield userOption.fold(() => const AuthState.unauthenticated(),
                  (_) => const AuthState.authenticated());
        },
        signedOut: (e) async* {
          await _authFacadeInterface.signOut();
          yield const AuthState.authenticated();
        }
       );
  }
}
