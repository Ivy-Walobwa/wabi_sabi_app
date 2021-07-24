import 'package:flutter/material.dart';

class SavingIndicatorWidget extends StatelessWidget {
  final bool isSaving;

  const SavingIndicatorWidget({
    Key? key,
    required this.isSaving
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSaving,
          child: const Center(child:  CircularProgressIndicator()),
        ),
      ),
    );
  }
}
