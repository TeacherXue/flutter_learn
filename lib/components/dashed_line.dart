import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  final Axis axis;
  final double dashedWidth;
  final double dashedHeight;
  final int count;
  final Color color;

  DashedLine({
    this.axis,
    this.dashedWidth = 1,
    this.dashedHeight = 1,
    this.count = 10,
    this.color = const Color(0xFFE2E2E2)
  });

  @override
  Widget build(BuildContext context) {
//    return LayoutBuilder(               //获取父组件的大小
//        builder: (BuildContext context, BoxConstraints constraints) {
//          constraints.constrainWidth()
//          constraints.constrainHeight()
//        }
//    );
    return Flex(
      direction: axis,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(count, (int index) {
        return Container(
            color: this.color,
            width: this.dashedWidth,
            height: this.dashedHeight
        );
      }),
    );
  }
}


