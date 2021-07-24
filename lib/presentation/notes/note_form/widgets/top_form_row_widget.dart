import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class TopFormRowWidget extends StatelessWidget {
  const TopFormRowWidget({
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(color: Colors.black),
        ),
        InkWell(
          onTap: () {
            AutoRouter.of(context).pop();
          },
          child: const Icon(
            Icons.close,
            color: Colors.black26,
            size: 30,
          ),
        )
      ],
    );
  }
}
