import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/notes/note.dart';
import '../../../domain/notes/note_failure.dart';
import '../../../domain/notes/note_repository_interface.dart';
import '../../../domain/notes/value_objects.dart';

part 'note_form_event.dart';

part 'note_form_state.dart';

part 'note_form_bloc.freezed.dart';

@injectable
class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  final NoteRepositoryInterface _noteRepositoryInterface;

  NoteFormBloc(this._noteRepositoryInterface) : super(NoteFormState.initial());

  @override
  Stream<NoteFormState> mapEventToState(NoteFormEvent event,) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialNote == null
            ? state
            : state.copyWith(
          note: state.note,
          isEditing: true,
        );
      },
      noteLeadOnTextChanged: (e) async* {
        yield state.copyWith(
          note: state.note.copyWith(
            noteLeadOnText: NoteLeadOnText(e.noteLeadingText),
          ),
          saveFailureOrSuccess: none(),
        );
      },
      noteBodyChanged: (e) async* {
        yield state.copyWith(
          note: state.note.copyWith(
            noteBody: NoteBody(e.bodyText),
          ),
          saveFailureOrSuccess: none(),
        );
      },
      saved: (e) async* {

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccess: none(),
        );

        final Either<NoteFailure, Unit> failureOrSuccess = (state.note.failureOption
            .isNone() && state.isEditing) ? await _noteRepositoryInterface
            .update(state.note) : await _noteRepositoryInterface.create(
            state.note);

        yield state.copyWith(
          isSaving: false,
          showError: true,
          saveFailureOrSuccess: some(failureOrSuccess),
        );
      },
    );
  }
}
