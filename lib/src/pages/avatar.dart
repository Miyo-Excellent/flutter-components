import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQuqFFh-olyeV1NoIFc-NiEJCssfc6qVvcIxXAEGvM-qV5Z6y_a'),
                radius: 22.0),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.lightBlue[800],
            ),
          )
        ],
      ),
      body: Container(
        child: Center(
          child: FadeInImage(
            fadeInDuration: Duration(milliseconds: 200),
            placeholder: AssetImage('assets/AGNB.gif'),
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQuqFFh-olyeV1NoIFc-NiEJCssfc6qVvcIxXAEGvM-qV5Z6y_a'),
          ),
        ),
      ),
    );
  }
}
