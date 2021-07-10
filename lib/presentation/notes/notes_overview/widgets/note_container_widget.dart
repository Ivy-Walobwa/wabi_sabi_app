import 'package:flutter/material.dart';

import '../../../core/constants.dart';

class NoteContainerWidget extends StatelessWidget {
  const NoteContainerWidget({
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
                // TODO: Add actaul note from db
                Text(
                  "OMG!!!! Did he do that to me.I'm about to scream,OMG!!!! Did he do that to me.I'm about to scream,",
                  style: Theme.of(context).textTheme.headline2!.copyWith(color: Colors.black),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                kverticalSpaceBetweenWidgets,
                // TODO: Add actaul time from db
                const Text('14:47'),
              ],
            ),
          ),
        ),
        kverticalSpaceBetweenWidgets,
      ],
    );
  }
}

