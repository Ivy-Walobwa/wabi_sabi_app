// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoteDto _$$_NoteDtoFromJson(Map<String, dynamic> json) => _$_NoteDto(
      noteBody: json['noteBody'] as String,
      noteTimeStamp: json['noteTimeStamp'] as String,
      noteLeadOnText: json['noteLeadOnText'] as String?,
    );

Map<String, dynamic> _$$_NoteDtoToJson(_$_NoteDto instance) =>
    <String, dynamic>{
      'noteBody': instance.noteBody,
      'noteTimeStamp': instance.noteTimeStamp,
      'noteLeadOnText': instance.noteLeadOnText,
    };
