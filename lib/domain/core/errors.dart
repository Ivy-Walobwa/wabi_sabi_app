import 'value_failures.dart';

class UnexpectedValueFailure extends Error{
  final ValueFailure valueFailure;

  UnexpectedValueFailure(this.valueFailure);

  @override
  String toString() {
    const explanation = 'Encountered a ValueFailure at an  unrecoverable point. Terminating';
    return Error.safeToString('$explanation Failure was $valueFailure');
  }
}

class NotAuthenticatedError extends Error{

}