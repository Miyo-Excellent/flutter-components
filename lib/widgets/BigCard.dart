import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BigCard extends StatelessWidget {
  String _image = '';
  String _placeholder = '';
  String _title = '';
  String _text = '';

  BigCard({
    String imageUrl,
    String placeholderUrl,
    String title,
    String text,
  }) {
    _image = imageUrl;
    _placeholder = placeholderUrl;
    _title = title;
    _text = text;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
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
                      image: NetworkImage(_image),
                      placeholder: AssetImage(_placeholder),
                      fadeInDuration: Duration(milliseconds: 200),
                      fit: BoxFit.cover,
                      height: 275.0,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ListTile(
                      leading: Icon(Icons.threed_rotation),
                      title: Text(_title,
                          style: TextStyle(
                              color: Color.fromRGBO(120, 120, 120, 1.0))),
                      subtitle: Text(_text,
                          style: TextStyle(
                              color: Color.fromRGBO(120, 120, 120, 1.0))),
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
            )));
  }
}
