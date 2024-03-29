import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/value_objects.dart';
import '../../domain/notes/note.dart';
import '../../domain/notes/value_objects.dart';

part 'note_dtos.freezed.dart';
part 'note_dtos.g.dart';

@freezed
abstract class NoteDto implements _$NoteDto {

  const factory NoteDto({
    @JsonKey(ignore: true) String? id,
    required String noteBody,
    required String noteTimeStamp,
    String? noteLeadOnText,
  }) = _NoteDto;

  const NoteDto._();

  factory NoteDto.fromDomain(Note note) {
    return NoteDto(
        id: note.id.getOrCrash(),
        noteBody: note.noteBody.getOrCrash(),
        noteLeadOnText: note.noteLeadOnText!.getOrCrash(),
        noteTimeStamp: DateTime.now().toString());
  }

  Note toDomain() {
    return Note(
      id: UniqueID.fromUniqueString(id!),
      noteTimeStamp: NoteTimeStamp(noteTimeStamp),
      noteBody: NoteBody(noteBody),
      noteLeadOnText: NoteLeadOnText(noteLeadOnText!),
    );
  }

  factory NoteDto.fromJson(Map<String, dynamic> json) =>
      _$NoteDtoFromJson(json);

  factory NoteDto.fromFirestore(DocumentSnapshot doc){
    return NoteDto.fromJson(doc.data()! as Map<String, dynamic>).copyWith(id: doc.id,);
  }
}
