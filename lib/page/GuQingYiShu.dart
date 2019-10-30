import 'package:dazhushikeflutter/list/guqing.dart';
import 'package:flutter/material.dart';
import 'package:dazhushikeflutter/list/ZhenQingJianShang.dart';

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
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(guqing[index]["url"]),
                    ),
                    title: Text(guqing[index]["name"]),

                    onTap: () {
                      if(guqing[index]["name"] == "琴韵悠扬") {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>QingYunYouYang())
                        );
                      }
                      if(guqing[index]["name"] == "珍琴鉴赏") {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>ZhenQingXingShang())
                        );
                      }
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


class QingYunYouYang extends StatefulWidget {
  @override
  _QingYunYouYangState createState() => _QingYunYouYangState();
}

class _QingYunYouYangState extends State<QingYunYouYang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("琴韵悠扬"),
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
//          title: Text('Expanded Title'),
              // 背景折叠动画
              collapseMode: CollapseMode.parallax,

            ),
          ),
          SliverFillRemaining(
            child: Card(
              elevation: 20.0,
              child:
              Text(
                "        琴，又称古琴或者七弦琴，是一件在中国历史上流传了三千余年不曾中断，至今依然鸣响在书斋、舞台上的古老乐器。在中国古代社会漫长的历史阶段中，“琴、棋、书、画”历来被视为文人雅士修身养性的必由之径。古琴因其清、和、淡、雅的音乐品格寄寓了文人凌风傲骨、超凡脱俗的处世心态，而在音乐、棋术、书法、绘画中居于首位。“琴者，情也；琴者，禁也。”吹箫抚琴、吟诗作画、登高远游、对酒当歌成为文人士大夫生活的生动写照。春秋时期，孔子酷爱弹琴，无论在杏坛讲学，或是受困于陈蔡，操琴弦歌之声不绝；战国时期的伯牙和子期“《高山》《流水》觅知音”的故事，成为广为流传的佳话美谈；魏晋时期的嵇康给予古琴“众器之中，琴德最优”的至高评价，终以在刑场上弹奏《广陵散》作为生命的绝唱；唐代文人刘禹锡则在他的名篇《陋室铭》中为我们勾勒出一幅“可以弹素琴、阅金经。无丝竹之乱耳，无案牍之劳形”的淡泊境界。时至今日，古琴音乐依然作为中国音乐的灵魂与精髓，铸刻在美国“旅行者”号太空飞船的镀金唱片里，昼夜不息地回响在茫茫的太空之中，寻觅着宇宙间的“知音”。"
                    "\n \n        古琴自身的高文化特征不仅体现在保存至今的一千余首琴曲之中，它还有着极高的审美与收藏价值。古琴本身便是一种极具艺术欣赏价值的工艺品，它的制作集中体现了中国传统艺术的审美理念，凝聚着中国古代斫琴名家们的勤劳和智慧，因而历代名琴成为文物鉴藏家们梦寐以求的收藏佳品。"
                    "\n \n        2003年11月7日，对中国古琴艺术而言，是一个非同寻常的日子。联合国教科文组织正式宣布了第二批“人类口头与非物质遗产代表作”，古琴成为继昆曲之后第二个入选该项目的中国古老的音乐艺术形式。这是中国文化界的一件盛事，同时也在世界范围内引起了对古琴艺术更为热烈的关注。让我们一起走进古琴，去感受那深厚博大的文化积淀、去聆听那来自久远历史中的声音。"
                    "\n \n        古琴的造型美观流畅、错落大方。它集乐器、书法、篆刻于一身，成为难得的艺术珍品。将古琴作为珍品收藏并加以鉴赏，早在秦汉时期便已相习成风。相传黄帝的“清角”、楚庄王的“绕梁”、蔡邕的“焦尾”以及司马相如的“绿绮”被称为中国古代“四大名琴”，可惜早已失传。现在我们所能看到的形制定型后的古琴，以唐宋以后居多。"
                    "\n \n        鉴别古琴的真伪优劣是一门很深的学问，有经验的琴家主要依据琴的形制、断纹、工艺、铭刻等几个方面综合衡量判断。其中断纹是古琴年代久远的主要标志。“琴不历五百年不断，愈久，则断愈多。”一般来讲，清中期以后制作的古琴便很少再有断纹。古琴的形制与外观也是鉴定年代的依据之一，有些样式本身出现较晚，自然可以作为判断时间上限的依据；此外，古琴的腹款与铭文，由于直观地记录着制作者的姓名和年代，因此最为容易判断。然可惜伪作甚多，还需谨慎鉴别。"
                    "\n \n        古琴样式繁多，比较常见的有“伏羲”、“神农”、“仲尼”、“联珠”、“蕉叶”等样式。这些不同的样式主要区别在颈与腰内收的弧度与方式，从而追求一种不变之变、动中寓静的审美效应。"
                    "\n\n    "

              ),
            ),
          )
        ],
      ),
    );
  }
}


class ZhenQingXingShang extends StatefulWidget {
  @override
  _ZhenQingXingShangState createState() => _ZhenQingXingShangState();
}

class _ZhenQingXingShangState extends State<ZhenQingXingShang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            title: Text('珍琴鉴赏'),
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
                "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3655554010,2669768326&fm=26&gp=0.jpg",
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
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            "http://b-ssl.duitang.com/uploads/item/201402/18/20140218222914_scwuK.thumb.700_0.jpeg",
                          ),
                        ),
                        title: Text(qing[index]["name"]),
                        subtitle: Text(qing[index]["introduction"],overflow: TextOverflow.ellipsis,),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Image.network(qing[index]["imageUrl"]),
                                content: Text(qing[index]["name"]+"\n\n"+qing[index]["introduction"]),

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

                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return new Container(
                        height: 20.0,
                      );
                    },
                    itemCount: qing.length)),
          )
        ]));
  }
}

