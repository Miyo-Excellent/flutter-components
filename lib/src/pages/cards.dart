import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/BigCard.dart';

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
        children: _bigCards(),
      ),
    );
  }

  List<Widget> _bigCards() => _cards
      .map((card) => BigCard(
            title: card['title'],
            imageUrl: card['url'],
            placeholderUrl: 'assets/AGNB.gif',
            text: card['text'],
          ))
      .toList();
}
