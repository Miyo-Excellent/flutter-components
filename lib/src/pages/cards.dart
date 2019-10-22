import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(5),
        children: <Widget>[
          _cardType0()
        ],
      ),
    );
  }

  _cardType0() => Card(
    elevation: 5.0,
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.threed_rotation),
          title: Text('Card Title'),
          subtitle: Text('Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
              splashColor: Colors.redAccent,
              child: Text('Cancel', style: TextStyle(color: Colors.redAccent)),
              onPressed: () {},
            ),
            FlatButton(
              splashColor: Colors.blueAccent,
              child: Text('More', style: TextStyle(color: Colors.blueAccent)),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
}
