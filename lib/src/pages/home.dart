import 'package:flutter/material.dart';
//  import 'package:flutter_components/src/pages/alert.dart';
//  import 'package:flutter_components/src/pages/avatar.dart';
import 'package:flutter_components/src/providers/menu_providers.dart';
import 'package:flutter_components/src/utils/get_icon_by_string.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//      print(menuProvider.options);
//
//    menuProvider.getData().then((options) {
//      print('_List');
//      print(options);
//    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: FutureBuilder(
        future: menuProvider.getData(),
        initialData: [],
        builder:
            (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) =>
                _list(snapshot.data, context: context),
      ),
    );
  }

  Widget _list(List<dynamic> data, {BuildContext context}) {
    final List<Widget> options = [];

    data.forEach((item) {
      options
        ..add(ListTile(
          title: Text(item['text']),
          leading: getIconByString(item['icon']),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.lightBlue),
          subtitle: Text(item['route']),
          onTap: () {
            Navigator.pushNamed(context, item['route']);

//            if (item['route'] == 'alert') {
//              final route =
//                  MaterialPageRoute(builder: (context) => AlertPage());
//              Navigator.push(context, route);
//            } else if (item['route'] == 'avatar') {
//              final route =
//                  MaterialPageRoute(builder: (context) => AvatarPage());
//              Navigator.push(context, route);
//            } else if (item['route'] == 'cards') {
//             final route =
//                 MaterialPageRoute(builder: (context) => AlertPage());
//             Navigator.push(context, route);
//            }
          },
        ))
        ..add(Divider());
    });

    return ListView(
      children: options,
    );
  }
}
