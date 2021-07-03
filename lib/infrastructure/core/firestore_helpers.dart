import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/auth/auth_facade_interface.dart';
import '../../domain/core/errors.dart';
import '../../injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<AuthFacadeInterface>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get noteCollection => collection('notes');
}