import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:uuid/uuid.dart';

import '../core/value_failures.dart';
import 'errors.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  /// Throw [UnexpectedValueFailure] containing [ValueFailure]
  T getOrCrash() {
    return value.fold((l) => throw UnexpectedValueFailure(l), (r) => r);
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'ValueObject(value: $value)';
}

class UniqueID extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueID() {
    return UniqueID._(right(const Uuid().v1()));
  }

  factory UniqueID.fromUniqueString(String uid) {
    return UniqueID._(right(uid));
  }

  const UniqueID._(this.value);
}
