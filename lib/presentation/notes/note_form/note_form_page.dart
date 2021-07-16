import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../application/notes/note_form/note_form_bloc.dart';
import '../../../domain/notes/note.dart';
import '../../../injection.dart';
import 'widgets/widgets.dart';

class NoteFormPage extends StatelessWidget {
  final Note? editedNote;

  const NoteFormPage({
    required this.editedNote,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NoteFormBloc>()..add(NoteFormEvent.initialized(editedNote)),
      child: BlocConsumer<NoteFormBloc, NoteFormState>(
        listenWhen: (p, c) => p.saveFailureOrSuccess != c.saveFailureOrSuccess,
        listener: (context, state) {
          state.saveFailureOrSuccess.fold(
            () => null,
            (some) => some.fold(
              (failure) => showTopSnackBar(
                context,
                CustomSnackBar.error(
                  message: failure.map(
                      unexpected: (_) =>
                          'Unexpected error occurred, please contact support.',
                      insufficientPermission: (_) =>
                          'Insufficient permissions.',
                      unableToUpdate: (_) =>
                          "Couldn't update note. Was it deleted from another device?"),
                ),
              ),
              (r) => AutoRouter.of(context).pop(),
            ),
          );
        },
        buildWhen: (p, c) => p.isEditing != c.isEditing,
        builder: (context, state) {
          return state.isEditing ? EditNoteFormWidget() : NewNoteFormWidget();
        },
      ),
    );
  }
}
