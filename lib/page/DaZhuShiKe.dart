import 'package:flutter/material.dart';

class DaZhuShiKePage extends StatefulWidget {
  _DaZhuShiKePageState createState() => _DaZhuShiKePageState();
}

class _DaZhuShiKePageState extends State<DaZhuShiKePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollViewController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700.0,
      child: Scaffold(
        body: NestedScrollView(
          controller: _scrollViewController,
          headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title: Text('重庆大足石刻'),
                pinned: true,
                floating: true,
                forceElevated: boxIsScrolled,
                expandedHeight: 200.0,
                flexibleSpace: Container(
                  child: Image.network(
                    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573142566&di=c816f3ef1c04669c209caa6b1e2fcc31&imgtype=jpg&er=1&src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fupload%2Fupc%2Ftx%2Fitbbs%2F1811%2F07%2Fc4%2F118060063_1541553334198_mthumb.jpg',
                    width: double.infinity,
                    repeat: ImageRepeat.repeat,
                    height: double.infinity,
                  ),
                ),
                bottom: TabBar(
                  controller: _tabController,
                  tabs: <Widget>[
                    Tab(
                      text: "Home",
                      icon: Icon(Icons.home),
                    ),
                    Tab(
                      text: "Help",
                      icon: Icon(Icons.help),
                    ),
                  ],
                ),
              )
            ];
          },
          body: TabBarView(
            children: <Widget>[
              PageOne(),
              PageTwo(),
            ],
            controller: _tabController,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.control_point),
          onPressed: () {
            _tabController.animateTo(1,
                curve: Curves.bounceInOut,
                duration: Duration(milliseconds: 10));
            _scrollViewController
                .jumpTo(_scrollViewController.position.maxScrollExtent);
          },
        ),
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.network(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1572547885257&di=302d1de55a39be09ae3f8d571c333f06&imgtype=0&src=http%3A%2F%2Fwww.cnr.cn%2Ftravel%2Flytpj%2F200302160749_32694.jpg',
              width: 300.0,
              fit: BoxFit.contain,
            ),
            Image.network(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1572547913237&di=a19a1a76029c793dab12c647adaf800e&imgtype=0&src=http%3A%2F%2Fthumb.takefoto.cn%2Fwp-content%2Fuploads%2F2015%2F06%2F201506131131472215.jpg',
              width: 300.0,
              fit: BoxFit.contain,
            ),
          ],
        ));
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemExtent: 250.0,
      itemBuilder: (context, index) => Container(
        padding: EdgeInsets.all(10.0),
        child: Material(
          elevation: 4.0,
          borderRadius: BorderRadius.circular(5.0),
          color: index % 2 == 0 ? Colors.cyan : Colors.deepOrange,
          child: Center(
            child: Text(index.toString()),
          ),
        ),
      ),
    );
  }
}