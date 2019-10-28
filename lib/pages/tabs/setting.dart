import 'package:dazhushikeflutter/list/listdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
class Settingpage extends StatefulWidget {
  @override
  _SettingpageState createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> with SingleTickerProviderStateMixin {
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
      body: new Swiper(
        itemBuilder: (BuildContext context, int index) {    //淡入淡出
          return new Image.network(
            listData[index]["imageUrl"],
            fit: BoxFit.cover,
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: listData.length,
        itemWidth: MediaQuery.of(context).size.width,
        itemHeight: MediaQuery.of(context).size.height,
        layout: SwiperLayout.TINDER,
        onTap: (index) =>{
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text(listData[index]["title"]),
                content: Text(listData[index]["description"]),
                actions: <Widget>[
                  new FlatButton(
                    child: new Text("确定"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              )),
        },
      ),
    );


     /* SizedBox(
      width: 400.0,
      height: 400.0,
      child: Shimmer.fromColors(
        baseColor: Colors.red,
        highlightColor: Colors.green,

        child: Text(
          '世界非物质文化遗产',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40.0,
            fontWeight:
            FontWeight.bold,
          ),
        ),
      ),
    );*/


  }
}
