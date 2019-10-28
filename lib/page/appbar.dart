import 'package:flutter/material.dart';

class AppbarPage extends StatefulWidget {
  @override
  _AppbarPageState createState() => _AppbarPageState();
}

class _AppbarPageState extends State<AppbarPage> with SingleTickerProviderStateMixin {
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
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('appbar'),
          centerTitle: true,
          backgroundColor: Colors.purple,
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {
            print("hello");
          }),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search),
              onPressed: () {

              },
            ),
            IconButton(icon: Icon(Icons.settings),
              onPressed: () {

              },
            )

          ],

          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: "热门"),
              Tab(text: "首页"),
            ],
          ),

        ),
        body:  TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("Tabs"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("Tabs"),
                ),
              ],
            ),
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: Text("1276753397@qq.com"),
                accountName: Text("雷晶鑫"), 
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.deepOrange,
                ),
              ),
              ListTile(
                leading: Icon(Icons.laptop),
                title: Text("我的电脑"),
                onTap: () {

                },
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
