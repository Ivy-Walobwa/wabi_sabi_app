import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/notes/note_form/note_form_bloc.dart';
import '../../../core/constants.dart';
import '../../../core/widgets/custom_text_button.dart';

class LeadOnTextView extends StatelessWidget {
  const LeadOnTextView({
    Key? key,
  }) : super(key: key);


  // TODO: Create repo for all lead on texts
  static const List<String> leadOnTexts = [
    'I feel like',
    'Today I want to',
    'I just had',
    'Maybe this is how'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          leadOnTexts.length,
              (index) => Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CustomTextButton(
              onPressed: () => context.read<NoteFormBloc>().add(
                NoteFormEvent.noteLeadOnTextChanged(leadOnTexts[index]),
              ),
              primaryColor: kpurpleColor,
              backgroundColor: klightPinkColor2,
              child: Text(
                leadOnTexts[index],
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: kpurpleColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
