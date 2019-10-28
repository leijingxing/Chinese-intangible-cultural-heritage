import 'package:dazhushikeflutter/list/listdata.dart';
import 'package:dazhushikeflutter/list/meizidata.dart';
import 'package:dazhushikeflutter/list/picture.dart';
import 'package:dazhushikeflutter/list/yazhou.dart';
import 'package:dazhushikeflutter/page/DaZhuShiKe.dart';
import 'package:dazhushikeflutter/page/HuangMeiXi.dart';
import 'package:dazhushikeflutter/page/gugong.dart';
import 'package:dazhushikeflutter/page/jingju.dart';
import 'package:dazhushikeflutter/page/piyingxi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage>
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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  tabs: <Widget>[
                    Tab(text: '中国'),
                    Tab(text: '亚洲'),
                    Tab(text: '欧美'),
                    Tab(text: '其他'),
                  ],
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: picture.map((value) {
                return Card(
                elevation: 10.0,
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
                          if (value["title"] == "大足石刻") {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => TabsDemo()));
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
                          if (value["title"] == "黄梅戏") {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => HuangMeiXiPage()));
                          }
                        },
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
            ListView(
              children: <Widget>[
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 700.0,
                    child: Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        //淡入淡出
                        return new Image.network(
                          yazhou[index]["url"],
                          fit: BoxFit.fill,
                        );
                      },
                      itemCount: yazhou.length,
                      control: new SwiperControl(),
                      scrollDirection: Axis.vertical,
                      onTap: (index) => {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  title: Text('可爱的'),
                                  content: Text(('亚洲美女小姐姐')),
                                  actions: <Widget>[
                                    new FlatButton(
                                      child: new Text("取消"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    new FlatButton(
                                      child: new Text("确定"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                ))
                      },
                    )),
              ],
            ),
            ListView(
              children: meizidata.map((value) {
                return Card(
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
                        onTap: () {},
                      )
                    ],
                  ),
                );
              }).toList(),
            ),
            ListView(
              children: listData.map((value) {
                return Card(
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
                        onTap: () {},
                      )
                    ],
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
