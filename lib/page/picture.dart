import 'package:flutter/material.dart';
import 'package:dazhushikeflutter/list/picture.dart';
import 'package:dazhushikeflutter/page/jingju.dart';
import 'package:dazhushikeflutter/page/piyingxi.dart';
import 'package:dazhushikeflutter/page/HuangMeiXi.dart';
class PicturePage extends StatefulWidget {
  @override
  _PicturePageState createState() => _PicturePageState();
}

class _PicturePageState extends State<PicturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("图片赏析"),
        ),
        body:
        ListView(
          children: picture.map((value) {
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
                    onTap: () {
                      if(value["title"]=="京剧") {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>JingjuPage())
                        );
                      }
                      if(value["title"]=="皮影戏") {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>PiYingXiPage())
                        );
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
        ),

    );
  }
}
