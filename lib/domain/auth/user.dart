import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_objects.dart';
import 'value_objects.dart';

part 'user.freezed.dart';

@freezed
class WabiUser with _$WabiUser{
  const factory WabiUser({
    required UniqueID id,
    required EmailAddress emailAddress,
}) = _WabiUser;
}