import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
class Myjieshao extends StatefulWidget {
  @override
  _MyjieshaoState createState() => _MyjieshaoState();
}

class _MyjieshaoState extends State<Myjieshao> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      routes: {
        "/": (_) => new WebviewScaffold(
          url: "http://47.102.146.16",
          appBar:  new AppBar(
            title: new Text("关于作者"),
            leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                }
            ),
          ),
        )
      },
    );
  }
}
