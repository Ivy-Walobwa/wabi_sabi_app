// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WabiUserTearOff {
  const _$WabiUserTearOff();

  _WabiUser call({required UniqueID id, required EmailAddress emailAddress}) {
    return _WabiUser(
      id: id,
      emailAddress: emailAddress,
    );
  }
}

/// @nodoc
const $WabiUser = _$WabiUserTearOff();

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
      _$WabiUserCopyWithImpl<$Res>;
  $Res call({UniqueID id, EmailAddress emailAddress});
}

/// @nodoc
class _$WabiUserCopyWithImpl<$Res> implements $WabiUserCopyWith<$Res> {
  _$WabiUserCopyWithImpl(this._value, this._then);

  final WabiUser _value;
  // ignore: unused_field
  final $Res Function(WabiUser) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? emailAddress = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueID,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
    ));
  }
}

/// @nodoc
abstract class _$WabiUserCopyWith<$Res> implements $WabiUserCopyWith<$Res> {
  factory _$WabiUserCopyWith(_WabiUser value, $Res Function(_WabiUser) then) =
      __$WabiUserCopyWithImpl<$Res>;
  @override
  $Res call({UniqueID id, EmailAddress emailAddress});
}

/// @nodoc
class __$WabiUserCopyWithImpl<$Res> extends _$WabiUserCopyWithImpl<$Res>
    implements _$WabiUserCopyWith<$Res> {
  __$WabiUserCopyWithImpl(_WabiUser _value, $Res Function(_WabiUser) _then)
      : super(_value, (v) => _then(v as _WabiUser));

  @override
  _WabiUser get _value => super._value as _WabiUser;

  @override
  $Res call({
    Object? id = freezed,
    Object? emailAddress = freezed,
  }) {
    return _then(_WabiUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueID,
      emailAddress: emailAddress == freezed
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
        (other is _WabiUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(emailAddress);

  @JsonKey(ignore: true)
  @override
  _$WabiUserCopyWith<_WabiUser> get copyWith =>
      __$WabiUserCopyWithImpl<_WabiUser>(this, _$identity);
}

abstract class _WabiUser implements WabiUser {
  const factory _WabiUser(
      {required UniqueID id, required EmailAddress emailAddress}) = _$_WabiUser;

  @override
  UniqueID get id => throw _privateConstructorUsedError;
  @override
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WabiUserCopyWith<_WabiUser> get copyWith =>
      throw _privateConstructorUsedError;
}
