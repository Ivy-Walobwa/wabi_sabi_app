import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/notes/note.dart';
import '../../../domain/notes/note_failure.dart';
import '../../../domain/notes/note_repository_interface.dart';

part 'note_actor_event.dart';

part 'note_actor_state.dart';

part 'note_actor_bloc.freezed.dart';

@injectable
class NoteActorBloc extends Bloc<NoteActorEvent, NoteActorState> {
  final NoteRepositoryInterface _noteRepositoryInterface;

  NoteActorBloc(this._noteRepositoryInterface)
      : super(const NoteActorState.initial());

  @override
  Stream<NoteActorState> mapEventToState(
    NoteActorEvent event,
  ) async* {
    yield* event.map(deleted: (e) async* {
      yield const NoteActorState.actionInProgress();
      final possibleFailure = await _noteRepositoryInterface.delete(event.note);
      possibleFailure.fold((failure) => NoteActorState.deleteFailure(failure),
          (_) => const NoteActorState.deleteSuccess());
    });
  }
}
