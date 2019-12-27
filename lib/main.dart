import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title:"GoGoGo",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Home"),
          ),
          body: ContentWidget(),
          backgroundColor: Colors.yellow,
        )
    );
  }
}

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextWidget()
    );
  }
}

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      "haha",
      textDirection: TextDirection.ltr,
      style: TextStyle(
        fontSize: 24,
        color: Colors.blue,
      ),
    );
  }
}