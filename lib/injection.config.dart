// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i14;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i13;
import 'application/notes/note_actor/note_actor_bloc.dart' as _i11;
import 'application/notes/note_form/note_form_bloc.dart' as _i12;
import 'application/notes/note_watcher/note_watcher_bloc.dart' as _i8;
import 'domain/auth/auth_facade_interface.dart' as _i9;
import 'domain/notes/note_repository_interface.dart' as _i6;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i10;
import 'infrastructure/core/firebase_injectable_module.dart' as _i15;
import 'infrastructure/notes/note_repository.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i6.NoteRepositoryInterface>(
      () => _i7.NoteRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i8.NoteWatcherBloc>(
      () => _i8.NoteWatcherBloc(get<_i6.NoteRepositoryInterface>()));
  gh.lazySingleton<_i9.AuthFacadeInterface>(() => _i10.FirebaseAuthFacade(
        get<_i3.FirebaseAuth>(),
        get<_i5.GoogleSignIn>(),
      ));
  gh.factory<_i11.NoteActorBloc>(
      () => _i11.NoteActorBloc(get<_i6.NoteRepositoryInterface>()));
  gh.factory<_i12.NoteFormBloc>(
      () => _i12.NoteFormBloc(get<_i6.NoteRepositoryInterface>()));
  gh.factory<_i13.SignInFormBloc>(
      () => _i13.SignInFormBloc(get<_i9.AuthFacadeInterface>()));
  gh.factory<_i14.AuthBloc>(
      () => _i14.AuthBloc(get<_i9.AuthFacadeInterface>()));
  return get;
}

class _$FirebaseInjectableModule extends _i15.FirebaseInjectableModule {}
