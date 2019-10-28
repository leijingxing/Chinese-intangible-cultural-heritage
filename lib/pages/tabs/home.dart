import 'package:flutter/material.dart';
import 'package:dazhushikeflutter/page/appbar.dart';
import 'package:dazhushikeflutter/page/ButtonPage.dart';
import 'package:dazhushikeflutter/page/Swiper.dart';
import 'package:dazhushikeflutter/page/CardDemo.dart';
import 'package:dazhushikeflutter/list/picture.dart';
import 'package:dazhushikeflutter/page/gugong.dart';
import 'package:dazhushikeflutter/page/jingju.dart';
import 'package:dazhushikeflutter/page/piyingxi.dart';
import 'package:dazhushikeflutter/page/DaZhuShiKe.dart';
import 'package:dazhushikeflutter/page/HuangMeiXi.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:shimmer/shimmer.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
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
      body:

      Column(
        children: <Widget>[

          Container(
            width: MediaQuery.of(context).size.width,
            height: 250.0,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Colors.brown,
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1.0)),
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 20 / 9,
                        child: Image.network(
                          picture[index]["imageUrl"],
                          fit: BoxFit.fill,
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                            backgroundImage:
                                NetworkImage(picture[index]["imageUrl"])),
                        title: Text(picture[index]["title"]),
                        onTap: () {
                          if (picture[index]["title"] == "大足石刻") {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => TabsDemo()));
                          }
                          if (picture[index]["title"] == "故宫") {
                            //判断名称以跳转
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => GugongPage()));
                          }
                          if (picture[index]["title"] == "京剧") {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => JingjuPage()));
                          }
                          if (picture[index]["title"] == "皮影戏") {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PiYingXiPage()));
                          }
                          if (picture[index]["title"] == "黄梅戏") {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => HuangMeiXiPage()));
                          }
                        },
                      ),
                    ],
                  ),
                );
              },
              itemCount: picture.length,
              scrollDirection: Axis.horizontal,
              itemWidth: 600.0,
              itemHeight: 800.0,
              layout: SwiperLayout.TINDER,
              autoplay: true,
            ),
          ),
          Container(
              height: 300,
              width: 400,
              margin: EdgeInsets.all(10),
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(20, 200, 20, 10),
                title: Text(
                  "hello",
                ),
                subtitle: Text("hello",),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  image: DecorationImage(
                    image: NetworkImage("http://pics.sc.chinaz.com/files/pic/pic9/201910/bpic13857.jpg"),
                    centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                  ),
              ),

          ),
        ],
      ),
    );

/*

            new Swiper(

                itemBuilder: (BuildContext context, int index) {    //淡入淡出
                  return new Image.network(
                    picture[index]["imageUrl"],
                    fit: BoxFit.fill,
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: picture.length,
                itemWidth: 500.0,
                itemHeight: 700.0,
                layout: SwiperLayout.TINDER,

              )


*/

/*
      ListView(
        children: picture.map((value) {
          return Card(
            elevation: 5.0,
            margin: EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 20 / 9,
                  child: Image.network(
                    value["imageUrl"],
                    fit: BoxFit.cover,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(value["imageUrl"])),
                  title: Text(value["title"]),
                  subtitle: Text(value["description"],
                      maxLines: 1, overflow: TextOverflow.ellipsis),
                  onTap: () {
                    if(value["title"] == "大足石刻") {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=> TabsDemo())
                      );
                    }
                    if (value["title"] == "故宫") {
                      //判断名称以跳转
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => GugongPage()));
                    }
                    if (value["title"] == "京剧") {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => JingjuPage()));
                    }
                    if (value["title"] == "皮影戏") {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PiYingXiPage()));
                    }
                    if(value["title"]=="黄梅戏") {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>HuangMeiXiPage())
                      );
                    }
                  },
                ),
              ],
            ),
          );
        }).toList(),
      ),*/

    /* Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("跳转"),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=>AppbarPage())
            );
          },
        ),

        RaisedButton(
          child: Text("按钮演示"),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=>ButtonPage())
            );
          },
        ),
        RaisedButton(
          child: Text("轮播图"),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=>SwiperPage())
            );
          },
        ),
        RaisedButton(
          child: Text("卡片布局"),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=>CardDemo())
            );
          },
        )
      ],
    );
    */


    /* Container(
           height: 150.0,
           margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
           child: Shimmer.fromColors(
             baseColor: Colors.black,
             highlightColor: Colors.tealAccent,
             child: Text(
               '世界非物质文化遗产赏析',
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 30,
               ),
             ),
           ),
         ),*/


  }
}
