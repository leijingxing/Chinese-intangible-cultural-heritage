import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:dazhushikeflutter/list/gugong.dart';


class GugongPage extends StatefulWidget {
  @override
  _GugongPageState createState() => _GugongPageState();
}

class _GugongPageState extends State<GugongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("故宫图片赏析"),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.video_library),
            tooltip: "视频欣赏",
            onPressed: () {

            },
          )
        ],
      ),
      body:  new Swiper(
        itemBuilder: (BuildContext context, int index) {    //淡入淡出
          return new Image.network(
            gugong[index]["url"],
            fit: BoxFit.contain,
          );
        },
        itemCount: gugong.length,
        itemWidth: 900.0,
        itemHeight: 600.0,
        layout: SwiperLayout.TINDER,

      )
    );
  }
}
