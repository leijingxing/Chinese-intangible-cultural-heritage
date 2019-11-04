import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:dazhushikeflutter/list/PiYingXi.dart';
class PiYingXiPage extends StatefulWidget {
  @override
  _PiYingXiPageState createState() => _PiYingXiPageState();
}

class _PiYingXiPageState extends State<PiYingXiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("皮影戏图片赏析"),
        ),
        body:  new Swiper(
          itemBuilder: (BuildContext context, int index) {    //淡入淡出
            return new Image.network(
              piyingxi[index]["url"],
              fit: BoxFit.contain,
            );
          },
          itemCount: piyingxi.length,
          itemWidth: 900.0,
          itemHeight: 1600.0,
          layout: SwiperLayout.TINDER,


        )
    );
  }
}
