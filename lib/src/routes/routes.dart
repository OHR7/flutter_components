import 'package:flutter/material.dart';

import 'package:flutter_components/src/pages/card_page.dart';
import 'package:flutter_components/src/pages/home_page.dart';
import 'package:flutter_components/src/pages/alert_page.dart';
import 'package:flutter_components/src/pages/listview_page.dart';
import 'package:flutter_components/src/pages/slide_page.dart';
import 'package:flutter_components/src/pages/avatar_page.dart';
import 'package:flutter_components/src/pages/inputs_page.dart';
import 'package:flutter_components/src/pages/animated_container.dart';


Map<String, WidgetBuilder> getAppRoutes() {

  return <String, WidgetBuilder>{
    '/'       : ( BuildContext context ) => HomePage(),
    'card'    : ( BuildContext context ) => CardPage(),
    'lists'   : ( BuildContext context ) => ListPage(),
    'alert'   : ( BuildContext context ) => AlertPage(),
    'avatar'  : ( BuildContext context ) => AvatarPage(),
    'inputs'  : ( BuildContext context ) => InputPage(),
    'sliders' : ( BuildContext context ) => SliderPage(),
    'animatedContainer': ( BuildContext context ) => AnimatedContainerPage(),
  };

}