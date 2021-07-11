import 'package:flutter/material.dart';

class EditNoteFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Container(
      height: height*0.96,
      child: Text('Edit'),
    );
  }
}
