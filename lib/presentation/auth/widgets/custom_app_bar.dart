import 'package:flutter/material.dart';
import '../../core/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kdarkerPinkColor,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Wabi',
              style: Theme.of(context).textTheme.headline2!.copyWith(fontFamily: 'Rancho',fontSize: 60),
            ),
            Text(
              'Sabi',
              style: Theme.of(context).textTheme.headline1!.copyWith(fontFamily: 'Rancho', fontSize: 90),
            ),
          ],
        ),
      ),
    );
  }
}
