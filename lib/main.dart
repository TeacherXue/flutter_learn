import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo1"),
        ),
      body: HomeContent(),
      )
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          ProductItem("Apple1","iPhone Product1","https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1577444657653&di=54faa0b266faf0e00cc020c54dec8f8e&imgtype=0&src=http%3A%2F%2Fpic1.zhimg.com%2Fv2-b86f1b91c70787850146f07db1bf97a4_b.jpg"),
          ProductItem("Apple2","iPhone Product2","https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1577444657653&di=54faa0b266faf0e00cc020c54dec8f8e&imgtype=0&src=http%3A%2F%2Fpic1.zhimg.com%2Fv2-b86f1b91c70787850146f07db1bf97a4_b.jpg"),
          ProductItem("Apple3","iPhone Product3","https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1577444657653&di=54faa0b266faf0e00cc020c54dec8f8e&imgtype=0&src=http%3A%2F%2Fpic1.zhimg.com%2Fv2-b86f1b91c70787850146f07db1bf97a4_b.jpg")
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imageUrl;

  ProductItem(this.title,this.subTitle,this.imageUrl);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(width: 2)
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 10,),
              Text(title,style: TextStyle(fontSize: 25),),
              Text(subTitle,style: TextStyle(fontSize: 18),),
              SizedBox(height: 10,),
              Image.network(imageUrl)
            ],
          ),
        ),
    );

  }
}

