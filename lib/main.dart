import 'package:flutter/material.dart';
import 'package:learn_flutter/components/tabbar_item.dart';
import 'package:learn_flutter/views/group/group.dart';
import 'package:learn_flutter/views/home/home.dart';
import 'package:learn_flutter/views/mine/mine.dart';
import 'package:learn_flutter/views/multimedia/multimedia.dart';
import 'package:learn_flutter/views/shop/shop.dart';

void main() => runApp(DouBanApp());

class DouBanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "豆瓣",
        theme: ThemeData(
            primaryColor: Colors.green,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent
        ),
        home:MyStackPage()
    );;
  }
}

class MyStackPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MystackPageState();
  }
}

class MystackPageState extends State<MyStackPage> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          unselectedFontSize: 12,
          selectedFontSize: 12,
          type: BottomNavigationBarType.fixed,
          items: [
            TabBarItem("home","首页"),
            TabBarItem("multimedia","书影音"),
            TabBarItem("group","小组"),
            TabBarItem("shop","市集"),
            TabBarItem("mine","我的")
          ],
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: IndexedStack(
          index: _currentIndex,
          children: <Widget>[
            Home(),
            Multimedia(),
            Group(),
            Shop(),
            Mine()
          ],
        ),
    );
  }
}