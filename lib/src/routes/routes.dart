import 'package:componentes/src/pages/chat_page.dart';
import 'package:flutter/material.dart';

import 'package:componentes/src/pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'chat': (BuildContext context) => Chat()
  };
}
