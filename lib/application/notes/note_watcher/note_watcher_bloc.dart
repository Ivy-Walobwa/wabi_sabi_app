import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/notes/note.dart';
import '../../../domain/notes/note_failure.dart';
import '../../../domain/notes/note_repository_interface.dart';

part 'note_watcher_event.dart';

part 'note_watcher_state.dart';

part 'note_watcher_bloc.freezed.dart';

@injectable
class NoteWatcherBloc extends Bloc<NoteWatcherEvent, NoteWatcherState> {
  final NoteRepositoryInterface _noteRepositoryInterface;

  NoteWatcherBloc(this._noteRepositoryInterface)
      : super(const NoteWatcherState.initial());

  @override
  Stream<NoteWatcherState> mapEventToState(NoteWatcherEvent event,) async* {
    yield* event.map(watchAllStarted: (e) async* {
      yield const NoteWatcherState.loadInProgress();
      yield* _noteRepositoryInterface.watchAll().map(
            (failureOrNotes) =>
            failureOrNotes.fold(
                  (failure) => NoteWatcherState.loadFailure(failure),
                  (notes) => NoteWatcherState.loadSuccess(notes),
            ),
      );
    },);
  }
}
