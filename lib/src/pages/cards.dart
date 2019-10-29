import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  final List<Map<String, String>> _cards = <Map<String, String>>[
    {
      'title': 'Card Title',
      'url': 'https://wallpaperaccess.com/full/178440.jpg',
      'text':
          'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor'
    },
    {
      'title': 'Card Title',
      'url':
          'http://www.4kwallpaperhd.com/wp-content/uploads/2018/12/Sunset-Mountains-Landscape-Wallpaper-4k-3840x2160.jpg',
      'text':
          'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor'
    },
    {
      'title': 'Card Title',
      'url':
          'https://images.pexels.com/photos/1623263/pexels-photo-1623263.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
      'text':
          'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor'
    },
    {
      'title': 'Card Title',
      'url': 'https://images8.alphacoders.com/774/thumb-1920-774486.jpg',
      'text':
          'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(5),
        children: _cardType0(),
      ),
    );
  }

  List<Card> _cardType0() => _cards
      .map((card) => Card(
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.5)),
          elevation: 2.5,
          child: Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(228, 240, 240, 1.0),
              ),
            //  padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    FadeInImage(
                      image: NetworkImage(card['url']),
                      placeholder: AssetImage('assets/AGNB.gif'),
                      fadeInDuration: Duration(milliseconds: 200),
                      fit: BoxFit.cover,
                      height: 275.0,
                    ),
                    SizedBox(height: 20.0,),
                    ListTile(
                      leading: Icon(Icons.threed_rotation),
                      title: Text(card['title'], style: TextStyle(color: Color.fromRGBO(120, 120, 120, 1.0)),),
                      subtitle: Text(card['text'], style: TextStyle(color: Color.fromRGBO(120, 120, 120, 1.0)),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20.0, bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          FlatButton(
                            splashColor: Colors.redAccent,
                            child: Text('Cancel',
                                style: TextStyle(color: Colors.redAccent)),
                            onPressed: () {},
                          ),
                          SizedBox(width: 10.0),
                          FlatButton(
                            splashColor: Colors.blueAccent,
                            child: Text('More',
                                style: TextStyle(color: Colors.blueAccent)),
                            onPressed: () {},
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          )))
      .toList();

  List<Card> _cardType1() => _cards
      .map((card) => Card(
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.5)),
          elevation: 2.5,
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromRGBO(228, 240, 240, 1.0),
            ),
            child: Column(
              children: <Widget>[
                FadeInImage(
                  image: NetworkImage(card['url']),
                  placeholder: AssetImage('assets/AGNB.gif'),
                  fadeInDuration: Duration(milliseconds: 200),
                  fit: BoxFit.cover,
                  height: 275.0,
                ),
                Container(
                    padding: EdgeInsets.all(10.0), child: Text(card['text']))
              ],
            ),
          )))
      .toList();
}
