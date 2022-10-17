// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WabiUser {
  UniqueID get id => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WabiUserCopyWith<WabiUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WabiUserCopyWith<$Res> {
  factory $WabiUserCopyWith(WabiUser value, $Res Function(WabiUser) then) =
      _$WabiUserCopyWithImpl<$Res, WabiUser>;
  @useResult
  $Res call({UniqueID id, EmailAddress emailAddress});
}

/// @nodoc
class _$WabiUserCopyWithImpl<$Res, $Val extends WabiUser>
    implements $WabiUserCopyWith<$Res> {
  _$WabiUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? emailAddress = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueID,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WabiUserCopyWith<$Res> implements $WabiUserCopyWith<$Res> {
  factory _$$_WabiUserCopyWith(
          _$_WabiUser value, $Res Function(_$_WabiUser) then) =
      __$$_WabiUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueID id, EmailAddress emailAddress});
}

/// @nodoc
class __$$_WabiUserCopyWithImpl<$Res>
    extends _$WabiUserCopyWithImpl<$Res, _$_WabiUser>
    implements _$$_WabiUserCopyWith<$Res> {
  __$$_WabiUserCopyWithImpl(
      _$_WabiUser _value, $Res Function(_$_WabiUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? emailAddress = null,
  }) {
    return _then(_$_WabiUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueID,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
    ));
  }
}

/// @nodoc

class _$_WabiUser implements _WabiUser {
  const _$_WabiUser({required this.id, required this.emailAddress});

  @override
  final UniqueID id;
  @override
  final EmailAddress emailAddress;

  @override
  String toString() {
    return 'WabiUser(id: $id, emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WabiUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, emailAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WabiUserCopyWith<_$_WabiUser> get copyWith =>
      __$$_WabiUserCopyWithImpl<_$_WabiUser>(this, _$identity);
}

abstract class _WabiUser implements WabiUser {
  const factory _WabiUser(
      {required final UniqueID id,
      required final EmailAddress emailAddress}) = _$_WabiUser;

  @override
  UniqueID get id;
  @override
  EmailAddress get emailAddress;
  @override
  @JsonKey(ignore: true)
  _$$_WabiUserCopyWith<_$_WabiUser> get copyWith =>
      throw _privateConstructorUsedError;
}
