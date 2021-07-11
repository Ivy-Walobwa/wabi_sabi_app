import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/notes/note_watcher/note_watcher_bloc.dart';
import 'note_container_widget.dart';

class NoteOverViewBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
        builder: (context, state) {
      return state.map(
          initial: (_) => Container(
                color: Colors.yellowAccent,
                height: 100,
                width: 100,
              ),
          loadInProgress: (_) => const CircularProgressIndicator(),
          loadSuccess: (successState) {
            // TODO: sliding init Listview??
            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final note = successState.notes[index];
                if (note.failureOption.isSome()) {
                  // TODO: fix note error container
                  return Container(
                    color: Colors.red, height: 100, width: 100,);
                } else {
                  return NoteContainerWidget(note: note);
                }
              },
              itemCount: successState.notes.size,
            );
          },
          // TODO: fix load error container
          loadFailure: (_) => Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ));
    });
  }
}
