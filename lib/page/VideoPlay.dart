import 'package:flutter/material.dart';
import 'package:flutter_simple_video_player/flutter_simple_video_player.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:dazhushikeflutter/list/listdata.dart';

class VideoPlayPage extends StatefulWidget {
  @override
  _VideoPlayPageState createState() => _VideoPlayPageState();
}

class _VideoPlayPageState extends State<VideoPlayPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("精彩影像"),
        ),
        body:

        /*
        Container(
          padding: EdgeInsets.all(10),
          height: 300.0,
          child: SimpleViewPlayer("http://47.102.146.16/dazhushike/mp4/dazhu.mp4", isFullScreen: false,),
        )

        */
        Card(
          color: Colors.brown,
          elevation: 20.0,
          margin: EdgeInsets.all(20.0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          semanticContainer: true,

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15),
                height: 300.0,
                child: SimpleViewPlayer("http://47.102.146.16/dazhushike/mp4/dazhu.mp4", isFullScreen: false, ),
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text("重庆"),
                    onPressed: () {

                    },
                  ),
                  FlatButton(
                    child: Text("大足石刻"),
                    onPressed: () {

                    },
                  ),
                ],
              )
            ],
          ),
        )


      /*  Card(
          color: Colors.brown,
          elevation: 20.0,
          margin: EdgeInsets.all(20.0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          semanticContainer: true,

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15),
                height: 300.0,
                child: SimpleViewPlayer("http://47.102.146.16/dazhushike/mp4/dazhu.mp4", isFullScreen: false,),
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text(listData[index]["title"]),
                    onPressed: () {

                    },
                  ),
                  FlatButton(
                    child: Text(listData[index]["description"]),
                    onPressed: () {

                    },
                  )
                ],
              )
            ],
          ),
        );
        */
        /*
        Card(
          color: Colors.brown,
          elevation: 20.0,
          margin: EdgeInsets.all(20.0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          semanticContainer: true,

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15),
                height: 300.0,
                child: SimpleViewPlayer("http://47.102.146.16/dazhushike/mp4/dazhu.mp4", isFullScreen: false,),
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text("重庆"),
                    onPressed: () {

                    },
                  ),
                  FlatButton(
                    child: Text("大足石刻人文艺术"),
                    onPressed: () {

                    },
                  )
                ],
              )
            ],
          ),
        ),
        */
    );
  }

}

