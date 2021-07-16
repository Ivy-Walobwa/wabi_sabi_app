import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/notes/note_form/note_form_bloc.dart';
import '../../../../domain/notes/value_objects.dart';
import '../../../core/constants.dart';
import 'widgets.dart';

class NewNoteFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SizedBox(
      height: height * 0.96,
      child: BlocBuilder<NoteFormBloc, NoteFormState>(
        builder: (context, state) {
          final leadOnText = state.note.noteLeadOnText!.getOrCrash();
          return Form(
            autovalidateMode: state.showError
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(kappPadding),
                  child: Column(
                    children: [
                      const TopFormRowWidget( text: 'New Note',),
                      kverticalSpaceBetweenWidgets,
                      kverticalSpaceBetweenWidgets,
                      const LeadOnTextView(),
                      kverticalSpaceBetweenWidgets,
                      kverticalSpaceBetweenWidgets,
                      TextFormField(
                        key: Key(leadOnText),
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: Colors.black),
                        initialValue: leadOnText,
                        cursorColor: kpurpleColor,
                        minLines: 20,
                        maxLines: null,
                        maxLength: NoteBody.maxLength,
                        decoration: const InputDecoration(
                          counterText: '',
                          hintText: 'Enter note',
                          filled: true,
                          fillColor: klightPinkColor2,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: klightPinkColor1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: klightPinkColor2),
                          ),
                        ),
                        onChanged: (value) => context
                            .read<NoteFormBloc>()
                            .add(NoteFormEvent.noteBodyChanged(value)),
                        validator: (_) => context
                            .read<NoteFormBloc>()
                            .state
                            .note
                            .noteBody
                            .value
                            .fold(
                                (f) => f.maybeMap(
                                    exceedingLength: (f) =>
                                        'Exceeding Length, max: ${f.max}',
                                    empty: (_) => 'Note cannot be empty.',
                                    orElse: () => null),
                                (_) => null),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: state.isBodyChanged
                      ? () {
                          context
                              .read<NoteFormBloc>()
                              .add(const NoteFormEvent.saved());
                        }
                      : null,
                  child: Container(
                    padding: const EdgeInsets.all(kappPadding * 1.4),
                    decoration: BoxDecoration(
                      color: state.isBodyChanged ? kpurpleColor : Colors.grey,
                      borderRadius:
                          const BorderRadius.only(topLeft: Radius.circular(10)),
                    ),
                    child: const Icon(
                      Icons.done,
                      size: 40,
                      color: klightPinkColor2,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

