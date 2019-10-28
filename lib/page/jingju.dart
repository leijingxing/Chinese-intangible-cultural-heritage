import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:dazhushikeflutter/list/jingju.dart';
import 'package:share/share.dart';

class JingjuPage extends StatefulWidget {
  @override
  _JingjuPageState createState() => _JingjuPageState();
}

class _JingjuPageState extends State<JingjuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("中国文化-京剧"),
      ),
      body: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          //全屏轮播图
          return new Image.network(
            jingju[index]["url"],
            fit: BoxFit.cover,
          );
        },
        scrollDirection: Axis.vertical,
        itemCount: jingju.length,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
        onTap: (index) => {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text(jingju[index]["title"]),
                    content: Text(jingju[index]["description"]),
                    actions: <Widget>[
                      new FloatingActionButton(
                        child: new Text("分享"),
                        onPressed: () {
                          Share.share(jingju[index]["description"]);
                        },
                        
                      ),
                    ],
                  )),
        },
      ),
    );
  }
}
