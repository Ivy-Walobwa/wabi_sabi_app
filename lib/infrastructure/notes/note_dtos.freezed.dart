// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteDto _$NoteDtoFromJson(Map<String, dynamic> json) {
  return _NoteDto.fromJson(json);
}

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
      _$NoteDtoCopyWithImpl<$Res, NoteDto>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String noteBody,
      String noteTimeStamp,
      String? noteLeadOnText});
}

/// @nodoc
class _$NoteDtoCopyWithImpl<$Res, $Val extends NoteDto>
    implements $NoteDtoCopyWith<$Res> {
  _$NoteDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? noteBody = null,
    Object? noteTimeStamp = null,
    Object? noteLeadOnText = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      noteBody: null == noteBody
          ? _value.noteBody
          : noteBody // ignore: cast_nullable_to_non_nullable
              as String,
      noteTimeStamp: null == noteTimeStamp
          ? _value.noteTimeStamp
          : noteTimeStamp // ignore: cast_nullable_to_non_nullable
              as String,
      noteLeadOnText: freezed == noteLeadOnText
          ? _value.noteLeadOnText
          : noteLeadOnText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NoteDtoCopyWith<$Res> implements $NoteDtoCopyWith<$Res> {
  factory _$$_NoteDtoCopyWith(
          _$_NoteDto value, $Res Function(_$_NoteDto) then) =
      __$$_NoteDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String noteBody,
      String noteTimeStamp,
      String? noteLeadOnText});
}

/// @nodoc
class __$$_NoteDtoCopyWithImpl<$Res>
    extends _$NoteDtoCopyWithImpl<$Res, _$_NoteDto>
    implements _$$_NoteDtoCopyWith<$Res> {
  __$$_NoteDtoCopyWithImpl(_$_NoteDto _value, $Res Function(_$_NoteDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? noteBody = null,
    Object? noteTimeStamp = null,
    Object? noteLeadOnText = freezed,
  }) {
    return _then(_$_NoteDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      noteBody: null == noteBody
          ? _value.noteBody
          : noteBody // ignore: cast_nullable_to_non_nullable
              as String,
      noteTimeStamp: null == noteTimeStamp
          ? _value.noteTimeStamp
          : noteTimeStamp // ignore: cast_nullable_to_non_nullable
              as String,
      noteLeadOnText: freezed == noteLeadOnText
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
      _$$_NoteDtoFromJson(json);

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
        (other.runtimeType == runtimeType &&
            other is _$_NoteDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.noteBody, noteBody) ||
                other.noteBody == noteBody) &&
            (identical(other.noteTimeStamp, noteTimeStamp) ||
                other.noteTimeStamp == noteTimeStamp) &&
            (identical(other.noteLeadOnText, noteLeadOnText) ||
                other.noteLeadOnText == noteLeadOnText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, noteBody, noteTimeStamp, noteLeadOnText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoteDtoCopyWith<_$_NoteDto> get copyWith =>
      __$$_NoteDtoCopyWithImpl<_$_NoteDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoteDtoToJson(
      this,
    );
  }
}

abstract class _NoteDto extends NoteDto {
  const factory _NoteDto(
      {@JsonKey(ignore: true) final String? id,
      required final String noteBody,
      required final String noteTimeStamp,
      final String? noteLeadOnText}) = _$_NoteDto;
  const _NoteDto._() : super._();

  factory _NoteDto.fromJson(Map<String, dynamic> json) = _$_NoteDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get noteBody;
  @override
  String get noteTimeStamp;
  @override
  String? get noteLeadOnText;
  @override
  @JsonKey(ignore: true)
  _$$_NoteDtoCopyWith<_$_NoteDto> get copyWith =>
      throw _privateConstructorUsedError;
}
