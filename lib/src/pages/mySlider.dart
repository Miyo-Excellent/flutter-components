import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double _value = 0;
  bool _divisionsActive = false;
  bool _block = false;

  //  final double _max = 1000;
  final double _min = 200.0;

  @override
  Widget build(BuildContext context) {
    final _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text('Slider'),
        ),
        body: Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Column(
                            children: <Widget>[
                              Checkbox(
                                value: _block,
                                onChanged: (bool _value) =>
                                    setState(() => _block = _value),
                              ),
                              Center(
                                child: Text('Block'),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 0.0),
                          child: Column(
                            children: <Widget>[
                              Checkbox(
                                value: _divisionsActive,
                                onChanged: (bool _value) =>
                                    setState(() => _divisionsActive = _value),
                              ),
                              Center(
                                child: Text('Divisions'),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: Column(
                          children: <Widget>[
                            Slider(
                              onChanged: _block ? null :(double value) =>
                                  setState(() => _value = value),
                              label: 'Image Size',
                              value: _value > _min ? _value : _min,
                              divisions: _divisionsActive ? 10 : null,
                              activeColor: Colors.deepOrange,
                              max: _deviceWidth,
                              min: _min,
                            ),
                            Center(
                              child: Text('Change Image Size')
                            )
                          ],
                        ))
                      ],
                    ),
                    Divider(
                      color: Colors.black54,
                      thickness: 2.0,
                    ),
                    FadeInImage(
                      //  height: _value,
                      width: _value > _min ? _value : _min,
                      image: NetworkImage(
                          'https://wallpaperaccess.com/full/856732.jpg'),
                      placeholder: AssetImage('assets/AGNB.gif'),
                    )
                  ],
                )
              ],
            )));
  }
}
