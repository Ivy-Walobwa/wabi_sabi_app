// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'note_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteDto _$NoteDtoFromJson(Map<String, dynamic> json) {
  return _NoteDto.fromJson(json);
}

/// @nodoc
class _$NoteDtoTearOff {
  const _$NoteDtoTearOff();

  _NoteDto call(
      {@JsonKey(ignore: true) String? id,
      required String noteBody,
      required String noteTimeStamp,
      String? noteLeadOnText}) {
    return _NoteDto(
      id: id,
      noteBody: noteBody,
      noteTimeStamp: noteTimeStamp,
      noteLeadOnText: noteLeadOnText,
    );
  }

  NoteDto fromJson(Map<String, Object> json) {
    return NoteDto.fromJson(json);
  }
}

/// @nodoc
const $NoteDto = _$NoteDtoTearOff();

/// @nodoc
mixin _$NoteDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get noteBody => throw _privateConstructorUsedError;
  String get noteTimeStamp => throw _privateConstructorUsedError;
  String? get noteLeadOnText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteDtoCopyWith<NoteDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteDtoCopyWith<$Res> {
  factory $NoteDtoCopyWith(NoteDto value, $Res Function(NoteDto) then) =
      _$NoteDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String noteBody,
      String noteTimeStamp,
      String? noteLeadOnText});
}

/// @nodoc
class _$NoteDtoCopyWithImpl<$Res> implements $NoteDtoCopyWith<$Res> {
  _$NoteDtoCopyWithImpl(this._value, this._then);

  final NoteDto _value;
  // ignore: unused_field
  final $Res Function(NoteDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? noteBody = freezed,
    Object? noteTimeStamp = freezed,
    Object? noteLeadOnText = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      noteBody: noteBody == freezed
          ? _value.noteBody
          : noteBody // ignore: cast_nullable_to_non_nullable
              as String,
      noteTimeStamp: noteTimeStamp == freezed
          ? _value.noteTimeStamp
          : noteTimeStamp // ignore: cast_nullable_to_non_nullable
              as String,
      noteLeadOnText: noteLeadOnText == freezed
          ? _value.noteLeadOnText
          : noteLeadOnText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$NoteDtoCopyWith<$Res> implements $NoteDtoCopyWith<$Res> {
  factory _$NoteDtoCopyWith(_NoteDto value, $Res Function(_NoteDto) then) =
      __$NoteDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String noteBody,
      String noteTimeStamp,
      String? noteLeadOnText});
}

/// @nodoc
class __$NoteDtoCopyWithImpl<$Res> extends _$NoteDtoCopyWithImpl<$Res>
    implements _$NoteDtoCopyWith<$Res> {
  __$NoteDtoCopyWithImpl(_NoteDto _value, $Res Function(_NoteDto) _then)
      : super(_value, (v) => _then(v as _NoteDto));

  @override
  _NoteDto get _value => super._value as _NoteDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? noteBody = freezed,
    Object? noteTimeStamp = freezed,
    Object? noteLeadOnText = freezed,
  }) {
    return _then(_NoteDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      noteBody: noteBody == freezed
          ? _value.noteBody
          : noteBody // ignore: cast_nullable_to_non_nullable
              as String,
      noteTimeStamp: noteTimeStamp == freezed
          ? _value.noteTimeStamp
          : noteTimeStamp // ignore: cast_nullable_to_non_nullable
              as String,
      noteLeadOnText: noteLeadOnText == freezed
          ? _value.noteLeadOnText
          : noteLeadOnText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoteDto extends _NoteDto {
  const _$_NoteDto(
      {@JsonKey(ignore: true) this.id,
      required this.noteBody,
      required this.noteTimeStamp,
      this.noteLeadOnText})
      : super._();

  factory _$_NoteDto.fromJson(Map<String, dynamic> json) =>
      _$_$_NoteDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String noteBody;
  @override
  final String noteTimeStamp;
  @override
  final String? noteLeadOnText;

  @override
  String toString() {
    return 'NoteDto(id: $id, noteBody: $noteBody, noteTimeStamp: $noteTimeStamp, noteLeadOnText: $noteLeadOnText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoteDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.noteBody, noteBody) ||
                const DeepCollectionEquality()
                    .equals(other.noteBody, noteBody)) &&
            (identical(other.noteTimeStamp, noteTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.noteTimeStamp, noteTimeStamp)) &&
            (identical(other.noteLeadOnText, noteLeadOnText) ||
                const DeepCollectionEquality()
                    .equals(other.noteLeadOnText, noteLeadOnText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(noteBody) ^
      const DeepCollectionEquality().hash(noteTimeStamp) ^
      const DeepCollectionEquality().hash(noteLeadOnText);

  @JsonKey(ignore: true)
  @override
  _$NoteDtoCopyWith<_NoteDto> get copyWith =>
      __$NoteDtoCopyWithImpl<_NoteDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NoteDtoToJson(this);
  }
}

abstract class _NoteDto extends NoteDto {
  const factory _NoteDto(
      {@JsonKey(ignore: true) String? id,
      required String noteBody,
      required String noteTimeStamp,
      String? noteLeadOnText}) = _$_NoteDto;
  const _NoteDto._() : super._();

  factory _NoteDto.fromJson(Map<String, dynamic> json) = _$_NoteDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  String get noteBody => throw _privateConstructorUsedError;
  @override
  String get noteTimeStamp => throw _privateConstructorUsedError;
  @override
  String? get noteLeadOnText => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NoteDtoCopyWith<_NoteDto> get copyWith =>
      throw _privateConstructorUsedError;
}
