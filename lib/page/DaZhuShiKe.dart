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
    _tabController = TabController(vsync: this, length: 3);
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
                    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1572548266501&di=af672244687c84ea0bd21fe5b1fe7f71&imgtype=0&src=http%3A%2F%2Fp0.ifengimg.com%2Fa%2F2018_15%2F84367f33d9574d8_size59_w640_h429.jpg',
                    width: double.infinity,
                    repeat: ImageRepeat.repeat,
                    height: double.infinity,
                  ),
                ),
                bottom: TabBar(
                  controller: _tabController,
                  tabs: <Widget>[
                    Tab(
                      text: "首页",
                      icon: Icon(Icons.home),
                    ),
                    Tab(
                      text: "文化背景",
                      icon: Icon(Icons.feedback),
                    ),
                    Tab(
                      text: "文化价值",
                      icon: Icon(Icons.flip_to_back),
                    )
                  ],
                ),
              )
            ];
          },
          body: TabBarView(
            children: <Widget>[
              PageOne(),
              PageTwo(),
              PageThree(),
            ],
            controller: _tabController,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.close),
          onPressed: () {
            Navigator.of(context).pop();
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
              "http://47.102.146.16/dazhushike/images/pic10.jpg",
              width: 300.0,
              fit: BoxFit.contain,
            ),
            Image.network(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1572547913237&di=a19a1a76029c793dab12c647adaf800e&imgtype=0&src=http%3A%2F%2Fthumb.takefoto.cn%2Fwp-content%2Fuploads%2F2015%2F06%2F201506131131472215.jpg',
              width: 300.0,
              fit: BoxFit.contain,
            ),
            Image.network(
              "http://47.102.146.16/dazhushike/images/pic04.jpg",
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
            child: Container(
              margin: EdgeInsets.all(4),
              child: Image.network("http://47.102.146.16/dazhushike/images/pic13.png"),
            ),
          ),
        ),
      ),
    );
  }
}



class PageThree extends StatelessWidget {
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
            child: Container(
              margin: EdgeInsets.all(4),
              child: Image.network("http://47.102.146.16/dazhushike/images/pic13.png"),
            ),
          ),
        ),
      ),
    );
  }
}