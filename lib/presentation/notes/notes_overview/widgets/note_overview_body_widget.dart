import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/notes/note_watcher/note_watcher_bloc.dart';
import 'widgets.dart';


class NoteOverViewBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
        builder: (context, state) {
      return state.map(
          initial: (_) => Container(
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
                  return  NoteErrorWidget(note: note);
                } else {
                  return NoteContainerWidget(note: note);
                }
              },
              itemCount: successState.notes.size,
            );
          },
          loadFailure: (failureState) => Center(child: CriticalErrorWidget(noteFailure: failureState.noteFailure,)));
    });
  }
}
