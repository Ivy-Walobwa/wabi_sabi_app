import 'package:flutter/material.dart';
import 'package:wabi_sabi_app/presentation/core/constants.dart';

import '../../../../domain/notes/note_failure.dart';
import '../../../core/widgets/custom_text_button.dart';

class CriticalErrorWidget extends StatelessWidget {
  final NoteFailure noteFailure;

  const CriticalErrorWidget({
    required this.noteFailure,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.error_outline_outlined,
          size: 100,
          color: Colors.redAccent,
        ),
        Text(
          noteFailure.maybeMap(
            insufficientPermission: (_) => 'Insufficient Permissions',
            orElse: () => ' Unexpected Error\n Please contact support ',
          ),
          style: Theme
              .of(context)
              .textTheme
              .headline2!
              .copyWith(color: Colors.redAccent),),
        kverticalSpaceBetweenWidgets,
        Padding(
          padding: const EdgeInsets.all(kappPadding),
          child: CustomTextButton(
              onPressed: () {
                // TODO: Implement contact support button
              },
              primaryColor: klightPinkColor2,
              backgroundColor: kpurpleColor ,
              child: Row(
                children: const [
                  Icon(Icons.mail_outline),
                  khorizontalSpaceBetweenWidgets,
                  Text('Get Help from support')
                ],
              )),
        )

      ],
    );
  }
}
