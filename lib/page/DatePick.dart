import "package:flutter/material.dart";

class DatePickDemo extends StatefulWidget {
  @override
  _DatePickDemoState createState() => _DatePickDemoState();
}

class _DatePickDemoState extends State<DatePickDemo> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  DateTime _now = DateTime.now();
  _showdatepiker(){
    showDatePicker(context: context, initialDate: _now, firstDate:  DateTime(1970), lastDate: DateTime(2050));
  }

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
      appBar: AppBar(
        title: Text('日期选择'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('_now'),
                Icon(Icons.timer),
              ],
            ),
            onTap: () {
              _showdatepiker();
            },
          )
        ],
      ),
    );
  }
}
