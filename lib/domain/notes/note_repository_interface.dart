import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import 'note.dart';
import 'note_failure.dart';

abstract class NoteRepositoryInterface{
  // CRUD
  // watch notes - streams
  Stream<Either<NoteFailure, KtList<Note>>> watchAll();
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted();
  Future<Either<NoteFailure, Unit>> create(Note note);
  Future<Either<NoteFailure, Unit>> update(Note note);
  Future<Either<NoteFailure, Unit>> delete(Note note);

}