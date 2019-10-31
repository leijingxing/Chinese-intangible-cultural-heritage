import 'package:dazhushikeflutter/page/GuQingYiShu.dart';
import 'package:flutter/material.dart';
import 'package:dazhushikeflutter/page/appbar.dart';
import 'package:dazhushikeflutter/page/ButtonPage.dart';
import 'package:dazhushikeflutter/page/Swiper.dart';
import 'package:dazhushikeflutter/page/CardDemo.dart';
import 'package:dazhushikeflutter/list/picture.dart';
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
      body: Column(
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
                                builder: (context) => DaZhuShiKePage()));
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
                          if (picture[index]["title"] == "古琴艺术") {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => GuQingPage()));
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
            height: 450,
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 20.0,
              padding: const EdgeInsets.all(20.0),
              childAspectRatio: 1.3,
              children: <Widget>[
                GridTile(
                    child: Image.network(
                      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1572545009780&di=8b0d03a1038f80eeee08575314299ba6&imgtype=0&src=http%3A%2F%2Fimg.bimg.126.net%2Fphoto%2FlNs-AEtxOk3pkRU_r60F_w%3D%3D%2F4856850723142941306.jpg",
                      scale: 1,
                      fit: BoxFit.cover,
                    ),
                  footer: ListTile(
                    leading: Icon(Icons.video_library),
                    title: Text("黄梅戏"),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("黄梅戏"),
                            content: Text("女驸马"),
                            actions: <Widget>[
                              new FlatButton(
                                child: new Text("确定"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          ));
                    },
                  )
                ),
                GridTile(
                    footer: ListTile(
                      leading: Icon(Icons.video_library),
                      title: Text("古琴"),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text("古琴"),
                              content: Text("九霄环佩"),
                              actions: <Widget>[
                                new FlatButton(
                                  child: new Text("确定"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ));
                      },
                    ),
                    child: Image.network(
                      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1572546798141&di=c92df11835c211c4976ff941225e280b&imgtype=0&src=http%3A%2F%2Fculture.chinajilin.com.cn%2Fwebpic%2FW0201606%2FW020160614%2FW020160614380674570650.jpg",
                      scale: 1,
                      fit: BoxFit.cover,
                    )),
              ],
            ),
          )
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
