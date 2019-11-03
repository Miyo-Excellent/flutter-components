import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/BigCard.dart';

class ListBuilder extends StatefulWidget {
  @override
  _ListBuilderState createState() => _ListBuilderState();
}

class _ListBuilderState extends State<ListBuilder> {
  final ScrollController _scrollController = ScrollController();
  bool _isLoading = false;
  List<int> _numbers = new List();

  @override
  void initState() {
    super.initState();

    _addItems();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) _addItems();
    });
  }

  @override
  void dispose() {
    super.dispose();

    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List Builder'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _scrollController.animateTo(
                _scrollController.position.minScrollExtent,
                duration: Duration(seconds: 1),
                curve: Curves.elasticOut);
          },
          child: Center(
            child: Icon(Icons.arrow_upward),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(5.0),
          child: RefreshIndicator(
            onRefresh: _onRefresh,
            child: Stack(
              children: <Widget>[
                ListView.builder(
                  controller: _scrollController,
                  itemCount: _numbers.length,
                  itemBuilder: (BuildContext _context, int _index) => BigCard(
                    title: 'Title',
                    text:
                        'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.',
                    placeholderUrl: 'assets/AGNB.gif',
                    imageUrl:
                        'https://picsum.photos/id/${_numbers[_index]}/1280/720',
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: _isLoading
                      ? Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    padding: EdgeInsets.all(8.0),
                                    width: 40.0,
                                    height: 40.0,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2.0,
                                    ))
                              ],
                            )
                          ],
                        )
                      : Container(),
                )
              ],
            ),
          ),
        ));
  }

  Future<Null> _onRefresh() async {
    final Duration duration = Duration(seconds: 2);
    Timer(duration, () => _resetList());
    return Future.delayed(duration);
  }

  void _resetList() {
    setState(() => _numbers.clear());
    _addItems();
  }

  Future<Null> _addItems() async {
    final Duration duration = Duration(seconds: 2);
    final _random = Random();
    setState(() => _isLoading = true);

    return Timer(duration, () {
      for (int i = 0; i < 10; i++) {
        _numbers.add(_random.nextInt(1000));
      }

      setState(() => _isLoading = false);
    });
  }
}
