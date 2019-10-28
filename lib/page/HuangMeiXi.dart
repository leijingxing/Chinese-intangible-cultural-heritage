import 'package:dazhushikeflutter/list/HuangMeiXi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_video_player/flutter_simple_video_player.dart';

class HuangMeiXiPage extends StatefulWidget {
  @override
  _HuangMeiXiPageState createState() => _HuangMeiXiPageState();
}

class _HuangMeiXiPageState extends State<HuangMeiXiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        title: Text('黄梅戏'),
        centerTitle: true,
        // 展开的高度
        expandedHeight: 200.0,
        // 强制显示阴影
        forceElevated: false,
        // 设置该属性，当有下滑手势的时候，就会显示 AppBar
//        floating: true,
        // 该属性只有在 floating 为 true 的情况下使用，不然会报错
        // 当上滑到一定的比例，会自动把 AppBar 收缩（不知道是不是 bug，当 AppBar 下面的部件没有被 AppBar 覆盖的时候，不会自动收缩）
        // 当下滑到一定比例，会自动把 AppBar 展开
//        snap: true,
        // 设置该属性使 Appbar 折叠后不消失
//        pinned: true,
        // 通过这个属性设置 AppBar 的背景
        flexibleSpace: FlexibleSpaceBar(
//          title: Text('Expanded Title'),
          // 背景折叠动画
          collapseMode: CollapseMode.parallax,
          background: Image.network(
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1572247894861&di=78d3e23a72a03d480c6de6642967308a&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Fsinacn%2F20171115%2Ff0b8-fynstfh9855184.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),

      // 这个部件一般用于最后填充用的，会占有一个屏幕的高度，
      // 可以在 child 属性加入需要展示的部件
      SliverFillRemaining(
        child: Card(
            margin: EdgeInsets.all(10),
            child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading:
                        Icon(Icons.video_library, color: Colors.greenAccent),
                    title: Text(huangmeixi[index]["name"]),
                    subtitle: Text(
                      huangmeixi[index]["title"],
                      overflow: TextOverflow.ellipsis,
                    ),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text(huangmeixi[index]["name"]),
                                content: Text(huangmeixi[index]["title"]),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Icon(
                                      Icons.video_library,
                                      color: Colors.greenAccent,
                                    ),
                                    onPressed: () {
                                      if (huangmeixi[index]["name"] ==
                                          "《天仙配》") {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (content) =>
                                              Tianxianpei(),
                                        ));
                                      }
                                      if (huangmeixi[index]["name"] ==
                                          "《女驸马》") {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (content) =>
                                              NvfumaVideo(),
                                        ));
                                      }
                                      if (huangmeixi[index]["name"] ==
                                          "《牛郎织女》") {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (content) =>
                                              Niulangzhinv(),
                                        ));
                                      }
                                    },
                                  ),
                                ],
                              ));
                    },
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return new Container(
                    height: 20.0,
                  );
                },
                itemCount: huangmeixi.length)),
      ),
    ]));
  }
}

class Tianxianpei extends StatefulWidget {
  @override
  _TianxianpeiState createState() => _TianxianpeiState();
}

class _TianxianpeiState extends State<Tianxianpei> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(huangmeixi[0]["name"]),
        ),
        body:

        /*Container(
          padding: EdgeInsets.all(10),
          height: 300.0,
          child: SimpleViewPlayer("http://47.102.146.16/dazhushike/mp4/dazhu.mp4", isFullScreen: false,),
        )
*/


        Card(
          color: Colors.brown,
          elevation: 20.0,
          margin: EdgeInsets.all(20.0),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          semanticContainer: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15),
                height: 400.0,
                child: SimpleViewPlayer(
                  huangmeixi[0]["mp4"],
                  isFullScreen: false,
                ),
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text(huangmeixi[0]["name"]),
                    onPressed: () {},
                  ),
                ],
              ),

            ],
          ),
        ));
  }
}


class NvfumaVideo extends StatefulWidget {
  @override
  _NvfumaVideoState createState() => _NvfumaVideoState();
}

class _NvfumaVideoState extends State<NvfumaVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(huangmeixi[1]["name"]),
        ),
        body:

        /*Container(
          padding: EdgeInsets.all(10),
          height: 300.0,
          child: SimpleViewPlayer("http://47.102.146.16/dazhushike/mp4/dazhu.mp4", isFullScreen: false,),
        )
*/


        Card(
          color: Colors.brown,
          elevation: 20.0,
          margin: EdgeInsets.all(20.0),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          semanticContainer: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15),
                height: 400.0,
                child: SimpleViewPlayer(
                  huangmeixi[1]["mp4"],
                  isFullScreen: false,
                ),
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text(huangmeixi[1]["name"]),
                    onPressed: () {},
                  ),
                ],
              ),

            ],
          ),
        ));
  }
}


class Niulangzhinv extends StatefulWidget {
  @override
  _NiulangzhinvState createState() => _NiulangzhinvState();
}

class _NiulangzhinvState extends State<Niulangzhinv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(huangmeixi[2]["name"]),
        ),
        body:

        /*Container(
          padding: EdgeInsets.all(10),
          height: 300.0,
          child: SimpleViewPlayer("http://47.102.146.16/dazhushike/mp4/dazhu.mp4", isFullScreen: false,),
        )
*/


        Card(
          color: Colors.brown,
          elevation: 20.0,
          margin: EdgeInsets.all(20.0),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          semanticContainer: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15),
                height: 400.0,
                child: SimpleViewPlayer(
                  huangmeixi[2]["mp4"],
                  isFullScreen: false,
                ),
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text(huangmeixi[2]["name"]),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
