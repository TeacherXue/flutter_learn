import 'package:flutter/material.dart';
import 'package:learn_flutter/components/dashed_line.dart';
import 'package:learn_flutter/models/home_model.dart';

class MovieListItem extends StatelessWidget {

  final MovieItem item;

  MovieListItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 10, color: Color(0xffe2e2e2))
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          getRankWidget(),
          SizedBox(height: 8),
          getMovieContainerWidget(),
          SizedBox(height: 8),
          getOriginalTitleWidget()
        ],
      ),

    );
  }

  //1.获取电影排名title
  Widget getRankWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 7, 5, 7),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 238, 205, 144),
        borderRadius: BorderRadius.circular(3)
      ),
      child: Text(
          "No.${this.item.rank}",
          style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 131, 95, 36))
      ),
    );
  }

  //2.获取电影信息
  Widget getMovieContainerWidget() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          getMoviePicture(),
          getMovieInfo(),
          getDashedLineWidget(),
          getWishWidget()
        ],
      ),
    );
  }
  
  //2.1 获取电影海报
  Widget getMoviePicture() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Image.network(this.item.imageURL,height: 150,),
    );
  }

  //2.2 获取电影信息
  Widget getMovieInfo() {
    return Expanded(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              getMovieNameWidget(),
              getMovieRatingWidget(),
              getMovieIntroduceWidget(),
            ],
          ),
        )
    );
  }

  //2.2.1 获取电影名称
  Widget getMovieNameWidget() {
    return Container(
      child: Stack(
        children: <Widget>[
          Icon(Icons.play_circle_outline, color: Colors.red, size: 24),
          Text.rich(TextSpan(
            children: [
              TextSpan(text: "      " + this.item.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              TextSpan(text: "(${this.item.playDate})", style: TextStyle(fontSize: 18, color: Colors.grey))
            ]
          ))
        ],
      ),
    );
  }

  //2.2.2 获取电影评分
  Widget getMovieRatingWidget() {
    return Text("评分: ${this.item.rating}");
  }
  //2.2.3 获取电影信息
  Widget getMovieIntroduceWidget() {
    //字符串拼接
    final genresString = this.item.genres.join(" ");
    final director = this.item.direcotr.name;
    final actorString = this.item.casts.join(" ");//数组转转字符串
    return Text(
      "$genresString / $director / $actorString",
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: 16),
    );
  }

  //2.3 虚线
  Widget getDashedLineWidget() {
    return Container(
      width: 1,
      height: 120,
      child: DashedLine(
        axis: Axis.vertical,
        dashedHeight: 5,
        dashedWidth: 1,
        color: Color(0xFFE2E2E2),
        count: 16,
      ),
    );
  }

  //2.4 获取收藏
  Widget getWishWidget() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25,horizontal: 10),
      child: Column(
        children: <Widget>[
          Image.asset("assets/images/tabbar/add_favo.png",width: 32),
          SizedBox(height: 5),
          Text("想看",style: TextStyle(color: Color(0xFFEBAA3C),fontSize: 16))
        ],
      ),
    );
  }

  //3.获取电影原始名称
  Widget getOriginalTitleWidget() {
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity, //宽度最大  可以用来适应屏幕宽度
      decoration: BoxDecoration(
          color: Color(0xffeeeeee),
          borderRadius: BorderRadius.circular(5)
      ),
      child: Text(
          item.originalTitle,
          style: TextStyle(fontSize: 18,color: Colors.black54)
      ),
    );
  }
}
