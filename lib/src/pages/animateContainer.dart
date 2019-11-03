import 'dart:math';

import 'package:flutter/material.dart';

class CustomAnimatedContainer extends StatefulWidget {
  @override
  _CustomAnimatedContainerState createState() =>
      _CustomAnimatedContainerState();
}

class _CustomAnimatedContainerState extends State<CustomAnimatedContainer> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.deepPurple[400];
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);
  String _boxAnimation = 'elasticInOut';
  int _minTimeAnimationDuration = 750;
  Map<int, String> _animations = <int, String>{
    0: 'linear',
    1: 'decelerate',
    2: 'elasticInOut',
    3: 'easeInOut',
    4: 'bounceIn',
    5: 'easeInOutBack',
    6: 'easeInExpo',
    7: 'fastLinearToSlowEaseIn'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 5.0,
        child: Center(
          child: Icon(Icons.autorenew),
        ),
        onPressed: () => setState(() {
          final random = Random();
          final double width = random.nextInt(300).toDouble();
          final double height = random.nextInt(300).toDouble();

          _boxAnimation = _animations[random.nextInt(_animations.length - 1)];

          if (width < 50.0)
            _width = 50.0;
          else
            _width = width;

          if (height < 50.0)
            _height = 50.0;
          else
            _height = height;

          _color = Color.fromRGBO(
              random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
          _borderRadius = BorderRadius.circular(random.nextInt(50).toDouble());
        }),
      ),
      body: Center(
        child: AnimatedContainer(
          curve: _getRandomBoxAnimation(_boxAnimation),
          //  curve: Curves.fastLinearToSlowEaseIn,
          duration: Duration(
              milliseconds: Random().nextInt(1250) > _minTimeAnimationDuration
                  ? Random().nextInt(1250)
                  : _minTimeAnimationDuration),
          width: _width,
          height: _height,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
        ),
      ),
    );
  }

  Curve _getRandomBoxAnimation(String animation) {
    switch (animation) {
      case 'linear':
        return Curves.linear;
      case 'decelerate':
        return Curves.decelerate;
      case 'elasticInOut':
        return Curves.elasticInOut;
      case 'easeInOut':
        return Curves.easeInOut;
      case 'bounceIn':
        return Curves.bounceIn;
      case 'easeInOutBack':
        return Curves.easeInOutBack;
      case 'easeInExpo':
        return Curves.easeInExpo;
      case 'fastLinearToSlowEaseIn':
        return Curves.fastLinearToSlowEaseIn;
    }

    return Curves.linear;
  }
}
