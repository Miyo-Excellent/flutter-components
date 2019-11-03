import 'package:flutter/material.dart';

final Map<String, dynamic> _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'donut_large': Icons.donut_large,
  'input': Icons.input,
  'repeat': Icons.repeat,
  'list': Icons.list,
};

Icon getIconByString(String nameIcon) =>
    Icon(_icons[nameIcon], color: Colors.lightBlue);
