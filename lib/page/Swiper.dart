import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {

  List<Map> imgList=[
    {
      "url":"http://pic2.sc.chinaz.com/files/pic/pic9/201909/zzpic19999.jpg"
    },
    {
      "url":"http://pic.sc.chinaz.com/files/pic/pic9/201910/hpic1586.jpg"
    },
    {
      "url":"http://pic.sc.chinaz.com/files/pic/pic9/201905/zzpic17905.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("轮播图演示"),
      ),
      body:
      /*
      new Swiper(
        itemBuilder: (BuildContext context,int index){    //全屏轮播图
          return new Image.network(
          imgList[index]["url"]
          ,
          fit: BoxFit.fill,
          );
        },
        itemCount: imgList.length,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
      ),

      */

     /* new Swiper(
        itemBuilder: (BuildContext context, int index) {   //大小
          return new Image.network(
            imgList[index]["url"],
            fit: BoxFit.fill,
          );
        },
        itemCount: imgList.length,
        viewportFraction: 0.8,
        scale: 0.9,
      )
*/

      new Swiper(
        itemBuilder: (BuildContext context, int index) {    //淡入淡出
          return new Image.network(
            imgList[index]["url"],
            fit: BoxFit.fill,
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: imgList.length,
        itemWidth: 500.0,
        itemHeight: 700.0,
        layout: SwiperLayout.TINDER,

      )


      /*new Swiper(
          layout: SwiperLayout.CUSTOM,
          customLayoutOption: new CustomLayoutOption(           //斜面反转
              startIndex: -1,
              stateCount: 3
          ).addRotate([
            -45.0/180,
            0.0,
            45.0/180
          ]).addTranslate([
            new Offset(-370.0, -40.0),
            new Offset(0.0, 0.0),
            new Offset(370.0, -40.0)
          ]),
          itemWidth: 300.0,
          itemHeight: 500.0,
          itemBuilder: (context, index) {
            return new Image.network(
              imgList[index]["url"],
              fit: BoxFit.fill,
            );
          },
          itemCount: imgList.length)*/

      /*new ConstrainedBox(                             //小图标轮播
          child: new Swiper(
            outer:false,
            itemBuilder: (c, i) {
              return new Wrap(
                runSpacing:  6.0,
                children: [0,1,2,3,4,5,6,7,8,9].map((i){
                  return new SizedBox(
                    width: MediaQuery.of(context).size.width/5,
                    child: new Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new SizedBox(
                          child:  new Container(
                            child: new Image.network("https://fuss10.elemecdn.com/c/db/d20d49e5029281b9b73db1c5ec6f9jpeg.jpeg%3FimageMogr/format/webp/thumbnail/!90x90r/gravity/Center/crop/90x90"),
                          ),
                          height: MediaQuery.of(context).size.width * 0.12,
                          width: MediaQuery.of(context).size.width * 0.12,
                        ),
                        new Padding(padding: new EdgeInsets.only(top:6.0),child: new Text("$i"),)
                      ],
                    ),
                  );
                }).toList(),
              );
            },
            pagination: new SwiperPagination(
                margin: new EdgeInsets.all(5.0)
            ),
            itemCount: 10,
          ),
          constraints:new BoxConstraints.loose(new Size(1080.0 , 170.0))
      ),
*/
    );
  }
}
