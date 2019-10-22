import 'package:flutter/material.dart';
import 'package:flutter_components/src/pages/alert.dart';
import 'package:flutter_components/src/pages/avatar.dart';
import 'package:flutter_components/src/pages/cards.dart';
import 'package:flutter_components/src/pages/home.dart';

Map<String, WidgetBuilder> getApplicationRoutes() => <String, WidgetBuilder>{
      '/': (BuildContext context) => Home(),
      'avatars': (BuildContext context) => AvatarPage(),
      'alert': (BuildContext context) => AlertPage(),
      'cards': (BuildContext context) => CardsPage(),
    };
