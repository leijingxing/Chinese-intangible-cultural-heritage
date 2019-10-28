import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'home.dart';
import 'setting.dart';
import 'Category.dart';
import 'package:dazhushikeflutter/page/My_jieshao.dart';
import 'package:dazhushikeflutter/page/VideoPlay.dart';
import 'package:dazhushikeflutter/page/picture.dart';
import 'package:dazhushikeflutter/page/Search.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  int _currentIndex = 0;

  List _pageList = [
    Homepage(),
    CategoryPage(),
    Settingpage(),
  ];

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
        title: Text("世界非物质文化遗产赏析"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (content)=>SearchPage())
              );
            },
          )
        ],
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          fixedColor: Colors.pinkAccent,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页"),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), title: Text("分类")),
            BottomNavigationBarItem(icon: Icon(Icons.book), title: Text("收藏")),
          ]),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
/*

            DrawerHeader(                  //侧边栏头部显示
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                 image: NetworkImage("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=235857408,963851873&fm=27&gp=0.jpg",

                 ),
                ),
              ),
              child: Text("11111111111111111111111111111111111111"),

            ),
*/

            UserAccountsDrawerHeader(
              accountName: Text("雷晶鑫"),
              accountEmail: Text("1276753397@qq.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "http://pic1.sc.chinaz.com/files/pic/pic9/201807/zzpic12710.jpg"),
              ),
              onDetailsPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text('姓名'),
                          content: Text("雷晶鑫"),
                          actions: <Widget>[
                            new FlatButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("确定"))
                          ],
                        ));
              },
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                    "http://pics.sc.chinaz.com/files/pic/pic9/201910/bpic14034.jpg"),
                fit: BoxFit.fill,
              )),
            ),
            ListTile(                                    //图片赏析
              leading: Icon(Icons.image),
              title: Text("图片赏析"),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PicturePage()));
              },
            ),
            Divider(),
            ListTile(                             //精彩影像
              leading: Icon(Icons.video_library),
              title: Text("精彩影像"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => VideoPlayPage()));
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("分享软件"),
              onTap: () {
                Share.share("世界非物质文化遗产赏析App点击下载");
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.update),
              title: Text("软件更新"),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('亲'),
                      content: Text(('你的版本是最新的哟！')),
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
            Divider(),
            ListTile(                                         //关于作者
              leading: Icon(Icons.accessibility),
              title: Text("关于作者"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Myjieshao()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
