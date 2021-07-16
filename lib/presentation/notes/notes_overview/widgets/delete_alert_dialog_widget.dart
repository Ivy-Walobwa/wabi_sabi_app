import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/notes/note_actor/note_actor_bloc.dart';
import '../../../../domain/notes/note.dart';
import '../../../core/widgets/custom_text_button.dart';

class DeleteAlertDialogWidget extends StatelessWidget {
  const DeleteAlertDialogWidget({
    Key? key,
    required this.note,
  }) : super(key: key);

  final Note note;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))),
      title: Text(
        'Are you sure?',
        style: Theme.of(context)
            .textTheme
            .headline2!
            .copyWith(color: Colors.red),
        textAlign: TextAlign.center,
      ),
      content: Text(
        'Deleting this note is a permanent action; cannot be reversed',
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .bodyText1!
            .copyWith(color: Colors.black),
      ),
      actions: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomTextButton(
                onPressed: () {
                  AutoRouter.of(context).pop();
                },
                primaryColor: Colors.grey,
                backgroundColor: Colors.white,
                child: const Icon(Icons.close),
              ),
              CustomTextButton(
                onPressed: () {
                  context
                      .read<NoteActorBloc>()
                      .add(NoteActorEvent.deleted(note));
                  AutoRouter.of(context).pop();
                },
                primaryColor: Colors.red,
                backgroundColor: Colors.white,
                child: const Icon(Icons.delete_outline),
              )
            ],
          ),
        ),
      ],
    );
  }
}
