import 'package:flutter/material.dart';
import 'package:flutter_components/src/pages/home.dart';
import 'package:flutter_components/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        localizationsDelegates: [
          // ... app-specific localization delegate[s] here
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en'), // English
          const Locale('es'), // Spanish
          const Locale.fromSubtags(languageCode: 'es'),
        ],
        title: 'App Components',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: getApplicationRoutes(),
        onGenerateRoute: (RouteSettings settings) {
          print('Called Route ${settings.name}');

          return MaterialPageRoute(builder: (BuildContext context) => Home());
        },
      );
}
