import 'package:flutter/material.dart';

import '../../core/constants.dart';
import 'widgets/note_container_widget.dart';

class NotesOverViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kappPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TODO: Populate greeting according to time of day

              Text(
                'Good Morning,',
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(color: kpurpleColor),
              ),
              // TODO: Populate user actual name
              Text('Ives',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(color: kpurpleColor)),
              kverticalSpaceBetweenWidgets,
              kverticalSpaceBetweenWidgets,
              // TODO: sliding init Listview??
              ...List.generate(5, (index) => const NoteContainerWidget()),
            ],
          ),
        ),
      ),
    );
  }
}

