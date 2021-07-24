import 'package:dartz/dartz.dart';

import '../core/value_failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class NoteBody extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 1000;
   factory NoteBody(String input){

     return NoteBody._(validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty));
   }
  const NoteBody._(this.value);

}

class NoteLeadOnText extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String> value;

   factory NoteLeadOnText(String input){
     return NoteLeadOnText._(right(input));
   }

  const NoteLeadOnText._(this.value);

}

class NoteTimeStamp extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String> value;


  factory NoteTimeStamp(String input){
    return NoteTimeStamp._(validateStringNotEmpty(input));
  }

  const NoteTimeStamp._(this.value);
}


