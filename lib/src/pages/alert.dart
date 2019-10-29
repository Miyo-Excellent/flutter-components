import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Container(
        child: Center(
            heightFactor: 1.0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {},
                        color: Colors.lightBlue,
                        //  clipBehavior: Clip.hardEdge,
                        shape: StadiumBorder(),
                        child: Center(
                          child:
                          Text('Alert', style: TextStyle(color: Colors.white)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
