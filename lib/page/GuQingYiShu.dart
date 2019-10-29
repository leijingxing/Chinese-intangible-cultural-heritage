import 'package:dazhushikeflutter/list/HuangMeiXi.dart';
import 'package:flutter/material.dart';
import 'package:dazhushikeflutter/list/guqing.dart';
class GuQingPage extends StatefulWidget {
  @override
  _GuQingPageState createState() => _GuQingPageState();
}

class _GuQingPageState extends State<GuQingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        title: Text('古琴艺术'),
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
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1572374364764&di=5a0124a7d1ca030b15c121de1e38f02a&imgtype=0&src=http%3A%2F%2Fwww.7guqin.com%2FPublic%2FUploads%2Fimage%2F20171102%2F20171102090800_18451.jpg",
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
                        Icon(Icons.filter_b_and_w, color: Colors.purple),
                    title: Text(guqing[index]["name"]),

                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text(guqing[index]["name"]),
                              ));
                    },

                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return new Container(
                    height: 20.0,
                  );
                },
                itemCount: guqing.length)),
      )
    ]));
  }
}
