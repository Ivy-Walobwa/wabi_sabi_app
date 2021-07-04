import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabi_sabi_app/domain/core/value_failures.dart';
import '../core/value_objects.dart';
import 'value_objects.dart';

part 'note.freezed.dart';

@freezed
abstract class Note implements _$Note {
  const Note._();

  // ignore: sort_unnamed_constructors_first
  const factory Note({
    required UniqueID id,
    required NoteBody noteBody,
    NoteLeadOnText? noteLeadOnText,
    required NoteTimeStamp noteTimeStamp,
  }) = _Note;


  factory Note.empty() => Note(
      id: UniqueID(),
      noteBody: NoteBody(''),
      noteLeadOnText: NoteLeadOnText(''),
      noteTimeStamp: NoteTimeStamp(''));


  Option<ValueFailure<dynamic>> get failureOption {
    return noteBody.value
        .andThen(noteTimeStamp.value).andThen(noteLeadOnText!.value)
        .fold((f) => some(f), (_) => none());
  }
}

