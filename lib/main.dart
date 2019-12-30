import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo2"),
        ),
      body: HomeContent(),
      )
    );
  }
}

class HomeContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeContentState();
  }
}

class HomeContentState extends State<HomeContent> {
  int count = 0;

  @override  //初始化操作：可以在内做网络请求 初始化内容等等 类似viewdidload
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("当前计数为：$count",style: TextStyle(fontSize: 26),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      count ++;
                    });
                  },
                  child: Text("+1"),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      count --;
                    });
                  },
                  child: Text("-1"),
                )
              ],
            )
          ],
        )
    );;
  }
}



