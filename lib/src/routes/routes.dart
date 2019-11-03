import 'package:flutter/material.dart';
import 'package:flutter_components/src/pages/alert.dart';
import 'package:flutter_components/src/pages/avatar.dart';
import 'package:flutter_components/src/pages/cards.dart';
import 'package:flutter_components/src/pages/home.dart';
import 'package:flutter_components/src/pages/animateContainer.dart';
import 'package:flutter_components/src/pages/inputs.dart';
import 'package:flutter_components/src/pages/listBuider.dart';
import 'package:flutter_components/src/pages/mySlider.dart';

Map<String, WidgetBuilder> getApplicationRoutes() => <String, WidgetBuilder>{
      '/': (BuildContext context) => Home(),
      'avatars': (BuildContext context) => AvatarPage(),
      'alert': (BuildContext context) => AlertPage(),
      'cards': (BuildContext context) => CardsPage(),
      'animateContainer': (BuildContext context) => CustomAnimatedContainer(),
      'inputs': (BuildContext context) => Inputs(),
      'slider': (BuildContext context) => MySlider(),
      'list': (BuildContext context) => ListBuilder(),
    };
