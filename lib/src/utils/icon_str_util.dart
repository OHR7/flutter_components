import 'package:flutter/material.dart';


final _icons = <String, IconData>{
  "tune"          :  Icons.tune,
  "list"          :  Icons.list,
  "inputs"        :  Icons.input,
  "add_alert"     :  Icons.add_alert,
  "folder_open"   :  Icons.folder_open,
  "donut_large"   :  Icons.donut_large,
  "accessibility" :  Icons.accessibility,
};

Icon getIcon( String iconName ) {
  return Icon( _icons[iconName], color: Colors.blue );
}
