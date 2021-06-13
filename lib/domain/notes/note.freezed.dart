// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteTearOff {
  const _$NoteTearOff();

  _Note call(
      {required UniqueID id,
      required NoteBody noteBody,
      required NoteTimeStamp noteTimeStamp}) {
    return _Note(
      id: id,
      noteBody: noteBody,
      noteTimeStamp: noteTimeStamp,
    );
  }
}

/// @nodoc
const $Note = _$NoteTearOff();

/// @nodoc
mixin _$Note {
  UniqueID get id => throw _privateConstructorUsedError;
  NoteBody get noteBody => throw _privateConstructorUsedError;
  NoteTimeStamp get noteTimeStamp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteCopyWith<Note> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteCopyWith<$Res> {
  factory $NoteCopyWith(Note value, $Res Function(Note) then) =
      _$NoteCopyWithImpl<$Res>;
  $Res call({UniqueID id, NoteBody noteBody, NoteTimeStamp noteTimeStamp});
}

/// @nodoc
class _$NoteCopyWithImpl<$Res> implements $NoteCopyWith<$Res> {
  _$NoteCopyWithImpl(this._value, this._then);

  final Note _value;
  // ignore: unused_field
  final $Res Function(Note) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? noteBody = freezed,
    Object? noteTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueID,
      noteBody: noteBody == freezed
          ? _value.noteBody
          : noteBody // ignore: cast_nullable_to_non_nullable
              as NoteBody,
      noteTimeStamp: noteTimeStamp == freezed
          ? _value.noteTimeStamp
          : noteTimeStamp // ignore: cast_nullable_to_non_nullable
              as NoteTimeStamp,
    ));
  }
}

/// @nodoc
abstract class _$NoteCopyWith<$Res> implements $NoteCopyWith<$Res> {
  factory _$NoteCopyWith(_Note value, $Res Function(_Note) then) =
      __$NoteCopyWithImpl<$Res>;
  @override
  $Res call({UniqueID id, NoteBody noteBody, NoteTimeStamp noteTimeStamp});
}

/// @nodoc
class __$NoteCopyWithImpl<$Res> extends _$NoteCopyWithImpl<$Res>
    implements _$NoteCopyWith<$Res> {
  __$NoteCopyWithImpl(_Note _value, $Res Function(_Note) _then)
      : super(_value, (v) => _then(v as _Note));

  @override
  _Note get _value => super._value as _Note;

  @override
  $Res call({
    Object? id = freezed,
    Object? noteBody = freezed,
    Object? noteTimeStamp = freezed,
  }) {
    return _then(_Note(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueID,
      noteBody: noteBody == freezed
          ? _value.noteBody
          : noteBody // ignore: cast_nullable_to_non_nullable
              as NoteBody,
      noteTimeStamp: noteTimeStamp == freezed
          ? _value.noteTimeStamp
          : noteTimeStamp // ignore: cast_nullable_to_non_nullable
              as NoteTimeStamp,
    ));
  }
}

/// @nodoc

class _$_Note extends _Note {
  const _$_Note(
      {required this.id, required this.noteBody, required this.noteTimeStamp})
      : super._();

  @override
  final UniqueID id;
  @override
  final NoteBody noteBody;
  @override
  final NoteTimeStamp noteTimeStamp;

  @override
  String toString() {
    return 'Note(id: $id, noteBody: $noteBody, noteTimeStamp: $noteTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Note &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.noteBody, noteBody) ||
                const DeepCollectionEquality()
                    .equals(other.noteBody, noteBody)) &&
            (identical(other.noteTimeStamp, noteTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.noteTimeStamp, noteTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(noteBody) ^
      const DeepCollectionEquality().hash(noteTimeStamp);

  @JsonKey(ignore: true)
  @override
  _$NoteCopyWith<_Note> get copyWith =>
      __$NoteCopyWithImpl<_Note>(this, _$identity);
}

abstract class _Note extends Note {
  const factory _Note(
      {required UniqueID id,
      required NoteBody noteBody,
      required NoteTimeStamp noteTimeStamp}) = _$_Note;
  const _Note._() : super._();

  @override
  UniqueID get id => throw _privateConstructorUsedError;
  @override
  NoteBody get noteBody => throw _privateConstructorUsedError;
  @override
  NoteTimeStamp get noteTimeStamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NoteCopyWith<_Note> get copyWith => throw _privateConstructorUsedError;
}
