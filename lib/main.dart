import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo3"),
        ),
      body: HomeContent(),
      )
    );
  }
}

class HomeContent extends StatefulWidget {
  HomeContent() {
    print("HomeContent构造函数");
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    print("HomeContent creatState");
    return HomeContentState();
  }
}

class HomeContentState extends State<HomeContent> {

  HomeContentState() {
    print("HomeContentState 构造函数");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("HomeContentState didChangeDependencies");
  }

  @override
  void initState() {
    super.initState();
    print("HomeContentState initState");
  }

  @override
  Widget build(BuildContext context) {
    print("HomeContentState build");
    return Center(
      child: Text("Hello World",style: TextStyle(fontSize: 30),),
    );
  }

  @override
  void didUpdateWidget(HomeContent oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("HomeContentState didUpdateWidget");
  }
}


