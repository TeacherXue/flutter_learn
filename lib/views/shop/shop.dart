import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("市集"),
      ),
      body: Center(
        child: Text("市集",style: TextStyle(fontSize: 50),),
      ),
    );
  }
}