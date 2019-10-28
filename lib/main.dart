import 'package:flutter/material.dart';

import 'pages/tabs/Tabs.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      debugShowCheckedModeBanner: false,
      home: Tabs(),
    );
  }
}

