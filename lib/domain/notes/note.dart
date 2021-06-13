import 'package:freezed_annotation/freezed_annotation.dart';
import '../core/value_objects.dart';
import 'value_objects.dart';

part 'note.freezed.dart';

@freezed
class Note with _$Note {
  const factory Note({
    required UniqueID id,
    required NoteBody noteBody,
    required NoteTimeStamp noteTimeStamp,
  }) = _Note;

  factory Note.empty() => Note(
      id: UniqueID(),
      noteBody: NoteBody(''),
      noteTimeStamp: NoteTimeStamp(''));

}
