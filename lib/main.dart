import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Center(child: Text('hey'),),
    );
  }
}


