part of 'note_form_bloc.dart';

@freezed
class NoteFormEvent with _$NoteFormEvent {
  const factory NoteFormEvent.initialized(Note? initialNote) = _Initialized;
  const factory NoteFormEvent.noteLeadOnTextChanged(String noteLeadingText) = _LeadOnTextChanged;
  const factory NoteFormEvent.noteBodyChanged(String bodyText) = _NoteBodyChanged;
  const factory NoteFormEvent.saved() = _Saved;


}