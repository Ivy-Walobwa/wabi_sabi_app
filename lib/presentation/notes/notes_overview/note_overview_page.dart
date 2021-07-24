import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../application/notes/note_actor/note_actor_bloc.dart';
import '../../../application/notes/note_watcher/note_watcher_bloc.dart';
import '../../../injection.dart';
import '../../core/constants.dart';
import 'widgets/note_overview_body_widget.dart';

class NotesOverViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NoteWatcherBloc>()
        ..add(const NoteWatcherEvent.watchAllStarted()),
      child: BlocListener<NoteActorBloc, NoteActorState>(
        listener: (context, state) {
          state.maybeMap(
              deleteFailure: (state) => showTopSnackBar(
                    context,
                    CustomSnackBar.error(
                      message: state.noteFailure.map(
                          unexpected: (_) =>
                              'Unexpected error occured while deleting, plaese contact support',
                          insufficientPermission: (_) =>
                              'Cannot perform action. Insufficient permissions',
                          unableToUpdate: (_) => 'Impossible error'),
                    ),
                  ),
              orElse: () {});
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(kappPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // TODO: Populate greeting according to time of day

                  Text(
                    greeting(),
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
                  NoteOverViewBodyWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String greeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    }
    if (hour < 17) {
      return 'Good Afternoon';
    }
    return 'Good Evening';
  }
}
