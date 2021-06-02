import 'package:flutter/material.dart';

import '../auth/sign_in_page.dart';
import 'theme.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wabi Sabi',
      theme:appTheme,
      home: SignInPage(),
    );
  }
}
