part of 'note_form_bloc.dart';

@freezed
class NoteFormState with _$NoteFormState {
  const factory NoteFormState({
    required Note note,
    required bool showError,
    required bool isEditing,
    required bool isSaving,
    required bool isBodyChanged,
    required Option<Either<NoteFailure, Unit>> saveFailureOrSuccess,
  })=_NoteFormState;

  factory NoteFormState.initial() => NoteFormState(
      note: Note.empty(),
      showError: false,
      isEditing: false,
      isSaving: false,
      isBodyChanged: false,
      saveFailureOrSuccess: none());

}
