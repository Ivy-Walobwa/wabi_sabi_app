import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../domain/notes/note.dart';
import '../../../core/constants.dart';

class NoteContainerWidget extends StatelessWidget {
  final Note note;
  const NoteContainerWidget({
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
            color: klightPinkColor3,
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
          child:  Padding(
            padding:
            const EdgeInsets.all( kappPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                  note.noteBody.getOrCrash(),
                  style: Theme.of(context).textTheme.headline2!.copyWith(color: Colors.black),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                kverticalSpaceBetweenWidgets,
                 Text(dateTimeToHourMinute(note.noteTimeStamp.getOrCrash())),
              ],
            ),
          ),
        ),
        kverticalSpaceBetweenWidgets,
      ],
    );
  }

  String dateTimeToHourMinute(String date) {
   final DateFormat dateFormat = DateFormat.Hm();
   final DateTime dateTime = DateTime.parse(date);
    return dateFormat.format(dateTime);
  }}

