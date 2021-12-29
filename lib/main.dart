import 'package:flutter/material.dart';
import 'package:flutter_responsive_design/home_page.dart';

void main(){runApp(MyApp());}
class MyApp extends StatelessWidget {
  //this widget is the root of your application

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

