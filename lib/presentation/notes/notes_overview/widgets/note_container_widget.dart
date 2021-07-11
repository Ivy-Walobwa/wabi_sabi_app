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
        InkWell(
          onTap: (){
            // TODO: Navigate to note detail
            print('tapped');
          },
          child: Dismissible(
            key: Key(note.id.getOrCrash()),
            direction: DismissDirection.endToStart,
            confirmDismiss: (DismissDirection direction) async {
              // TODO: Implement delete alert dialog
              print('delete');
            },
            onDismissed: (DismissDirection direction) {
              // TODO: Implement delete
              print('delete');
            },
            background: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                ),
              ],
            ),
            child: Container(
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
              child: Padding(
                padding: const EdgeInsets.all(kappPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      note.noteBody.getOrCrash(),
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(color: Colors.black),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    kverticalSpaceBetweenWidgets,
                    Text(dateTimeToHourMinute(note.noteTimeStamp.getOrCrash())),
                  ],
                ),
              ),
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
  }
}
