import 'package:flutter/material.dart';

import '../../../../domain/notes/note.dart';
import '../../../core/constants.dart';

class NoteErrorWidget extends StatelessWidget {

  final Note note;

  const NoteErrorWidget({
    required this.note,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 6,
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(kappPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Invalid note, please contact support',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.white),
                ),
                kverticalSpaceBetweenWidgets,
                Text(note.failureOption.fold(() => '', (a) => a.toString()),    style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Colors.white),),
              ],
            ),
          ),
        ),
        kverticalSpaceBetweenWidgets,
      ],
    );
  }
}
