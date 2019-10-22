import 'package:flutter/material.dart';
import 'package:flutter_components/src/routes/routes.dart';
import 'package:flutter_components/src/pages/home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
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
