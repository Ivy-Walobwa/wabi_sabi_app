// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Note {
  UniqueID get id => throw _privateConstructorUsedError;
  NoteBody get noteBody => throw _privateConstructorUsedError;
  NoteLeadOnText? get noteLeadOnText => throw _privateConstructorUsedError;
  NoteTimeStamp get noteTimeStamp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteCopyWith<Note> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteCopyWith<$Res> {
  factory $NoteCopyWith(Note value, $Res Function(Note) then) =
      _$NoteCopyWithImpl<$Res, Note>;
  @useResult
  $Res call(
      {UniqueID id,
      NoteBody noteBody,
      NoteLeadOnText? noteLeadOnText,
      NoteTimeStamp noteTimeStamp});
}

/// @nodoc
class _$NoteCopyWithImpl<$Res, $Val extends Note>
    implements $NoteCopyWith<$Res> {
  _$NoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? noteBody = null,
    Object? noteLeadOnText = freezed,
    Object? noteTimeStamp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueID,
      noteBody: null == noteBody
          ? _value.noteBody
          : noteBody // ignore: cast_nullable_to_non_nullable
              as NoteBody,
      noteLeadOnText: freezed == noteLeadOnText
          ? _value.noteLeadOnText
          : noteLeadOnText // ignore: cast_nullable_to_non_nullable
              as NoteLeadOnText?,
      noteTimeStamp: null == noteTimeStamp
          ? _value.noteTimeStamp
          : noteTimeStamp // ignore: cast_nullable_to_non_nullable
              as NoteTimeStamp,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NoteCopyWith<$Res> implements $NoteCopyWith<$Res> {
  factory _$$_NoteCopyWith(_$_Note value, $Res Function(_$_Note) then) =
      __$$_NoteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueID id,
      NoteBody noteBody,
      NoteLeadOnText? noteLeadOnText,
      NoteTimeStamp noteTimeStamp});
}

/// @nodoc
class __$$_NoteCopyWithImpl<$Res> extends _$NoteCopyWithImpl<$Res, _$_Note>
    implements _$$_NoteCopyWith<$Res> {
  __$$_NoteCopyWithImpl(_$_Note _value, $Res Function(_$_Note) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? noteBody = null,
    Object? noteLeadOnText = freezed,
    Object? noteTimeStamp = null,
  }) {
    return _then(_$_Note(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueID,
      noteBody: null == noteBody
          ? _value.noteBody
          : noteBody // ignore: cast_nullable_to_non_nullable
              as NoteBody,
      noteLeadOnText: freezed == noteLeadOnText
          ? _value.noteLeadOnText
          : noteLeadOnText // ignore: cast_nullable_to_non_nullable
              as NoteLeadOnText?,
      noteTimeStamp: null == noteTimeStamp
          ? _value.noteTimeStamp
          : noteTimeStamp // ignore: cast_nullable_to_non_nullable
              as NoteTimeStamp,
    ));
  }
}

/// @nodoc

class _$_Note extends _Note {
  const _$_Note(
      {required this.id,
      required this.noteBody,
      this.noteLeadOnText,
      required this.noteTimeStamp})
      : super._();

  @override
  final UniqueID id;
  @override
  final NoteBody noteBody;
  @override
  final NoteLeadOnText? noteLeadOnText;
  @override
  final NoteTimeStamp noteTimeStamp;

  @override
  String toString() {
    return 'Note(id: $id, noteBody: $noteBody, noteLeadOnText: $noteLeadOnText, noteTimeStamp: $noteTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Note &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.noteBody, noteBody) ||
                other.noteBody == noteBody) &&
            (identical(other.noteLeadOnText, noteLeadOnText) ||
                other.noteLeadOnText == noteLeadOnText) &&
            (identical(other.noteTimeStamp, noteTimeStamp) ||
                other.noteTimeStamp == noteTimeStamp));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, noteBody, noteLeadOnText, noteTimeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoteCopyWith<_$_Note> get copyWith =>
      __$$_NoteCopyWithImpl<_$_Note>(this, _$identity);
}

abstract class _Note extends Note {
  const factory _Note(
      {required final UniqueID id,
      required final NoteBody noteBody,
      final NoteLeadOnText? noteLeadOnText,
      required final NoteTimeStamp noteTimeStamp}) = _$_Note;
  const _Note._() : super._();

  @override
  UniqueID get id;
  @override
  NoteBody get noteBody;
  @override
  NoteLeadOnText? get noteLeadOnText;
  @override
  NoteTimeStamp get noteTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$$_NoteCopyWith<_$_Note> get copyWith => throw _privateConstructorUsedError;
}
