import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';
import 'presentation/core/my_app_widget.dart';

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await runZonedGuarded(() async {
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

    ErrorWidget.builder = (FlutterErrorDetails error) {
      Zone.current.handleUncaughtError(error.exception, error.stack!);
      return ErrorWidget(error.exception);
    };

    configureInjection(Environment.prod);
    runApp(MyApp());
  }, (exception, stackTrace) {
    FirebaseCrashlytics.instance.recordError(exception, stackTrace);
  });
}




