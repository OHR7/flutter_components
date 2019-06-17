import 'package:flutter/material.dart';
import 'package:flutter_components/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
          const Locale('en'), // English
          const Locale('es', 'ES'), // Spanish
        ],
      debugShowCheckedModeBanner: false,
      title: 'Components',
      initialRoute: '/',
      routes: getAppRoutes(),
    );
  }
}
