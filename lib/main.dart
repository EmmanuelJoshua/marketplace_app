import 'dart:async';

import 'package:flutter/material.dart';

import 'package:marketplace_app/utils/utils.dart';
import 'package:marketplace_app/views/screens/dashboard/dashboard.dart';

void main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      runApp(const MyApp());
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tokosmile',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
