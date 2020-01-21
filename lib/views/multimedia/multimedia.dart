import 'package:flutter/material.dart';
import 'package:learn_flutter/components/dashed_line.dart';

class Multimedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("书影音"),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          color: Colors.orange,
          child: DashedLine(
            axis: Axis.vertical,
            dashedHeight: 8,
            dashedWidth: 1,
            count: 15,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}