import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> with SingleTickerProviderStateMixin {
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
    return Scaffold(
        appBar: AppBar(
          title: Text("按钮演示"),
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
          onPressed: () {

          },
          backgroundColor: Colors.red,
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("普通按钮"),
                onPressed: () {

                },
              ),
              SizedBox(height: 5,width: 5,),
              RaisedButton(
                child: Text("颜色按钮"),
                color: Colors.pink,
                textColor: Colors.white,
                onPressed: () {

                },
              ),
              SizedBox(height: 5,width: 5,),

              RaisedButton(
                child: Text("阴影按钮"),
                color: Colors.green,
                textColor: Colors.white,
                elevation: 15,
                onPressed: () {

                },
              ),

               RaisedButton.icon(
                 icon: Icon(Icons.search),
                 label: Text("图标按钮"),
                 color: Colors.pinkAccent,
                 onPressed: () {

                 },
               )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("自适应按钮"),
                color: Colors.deepOrange,
                elevation: 30,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                onPressed: () {

                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("圆形按钮"),
                shape: CircleBorder(
                  side: BorderSide(
                    color: Colors.white
                  )
                ),
                onPressed: () {

                },
              )
            ],
          ),
          Row(
            children: <Widget>[
              FlatButton(
                child: Text("flat按钮"),
                color: Colors.deepOrange,
                onPressed: (){

                },
              )
            ],
          ),
          Row(
            children: <Widget>[

            ],
          ),
        ],
      ),
    );
  }
}
