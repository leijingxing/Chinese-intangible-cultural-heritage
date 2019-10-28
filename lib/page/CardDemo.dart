import 'package:flutter/material.dart';
import 'package:dazhushikeflutter/list/listdata.dart';

class CardDemo extends StatefulWidget {
  @override
  _CardDemoState createState() => _CardDemoState();
}

class _CardDemoState extends State<CardDemo> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listData.map((value) {
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
                onTap: () {},
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
