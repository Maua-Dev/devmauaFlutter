import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:devmaua/shared/constants/app_theme.dart';

import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: AppTheme.mauaTheme,
              initialRoute: 'login',
            ).modular();
          }
          return Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        });
  }
}
