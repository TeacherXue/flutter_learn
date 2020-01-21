import 'package:flutter/material.dart';
import 'package:learn_flutter/models/home_model.dart';
import 'package:learn_flutter/network/http_request.dart';
import 'package:dio/dio.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomeBody> {

  List<MovieItem> movieItems = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    HttpRequest.request("http://douban.uieee.com/v2/movie/top250?start=0&count=20")
    .then((res) {

      final subjects = res.data["subjects"];

      List<MovieItem> movies = [];
      for (var sub in subjects) {
        movies.add(MovieItem.fromMap(sub));
      }
      setState(() {
        this.movieItems = movies;
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          itemCount: movieItems.length,
          itemBuilder: (BuildContext context, int index) {
            MovieItem movie = movieItems[index];
            return ListTile( //ListTile 相当于cell  可以自定义
              leading: Image.network(movie.imageURL),
              title: Text(movie.title),
              subtitle: Text(movie.direcotr.name)
            );
          }
      )
    );
  }
}
