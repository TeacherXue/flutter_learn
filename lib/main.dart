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
  @override
  State<StatefulWidget> createState() {
    return HomeContentState();
  }
}

class HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Center(
            child: avatarImageView() //头像
          ),
          SizedBox(height: 50),
          AccountPWDFormWidget(),
        ],
      ),
    );
  }
}

//头像
class avatarImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CircleAvatar(
        radius: 40,
        backgroundImage: NetworkImage("https://teacherxue.github.io/images/default_avatar.jpg")
    );
  }
}

//帐号密码表单
class AccountPWDFormWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AccountPWDFormState();
  }
}

class AccountPWDFormState extends State<AccountPWDFormWidget> {

//  final registerFormKey = GlobalKey<FormState>();
//  String username, password;
//
//  AccountPWDFormState() {
//    registerFormKey.currentState.save();
//  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
                icon: Icon(Icons.people),
                labelText: "用户名或手机号"
            ),
            onSaved: (value) {
              print("用户名：$value");
            },
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: "密码"
            ),
            onSaved: (value) {
              print("密码：$value");
            },
          ),
          SizedBox(height: 16,),
          Container(
            width: double.infinity,
            height: 44,
            child: RaisedButton(
              color: Colors.lightGreen,
              child: Text("注 册", style: TextStyle(fontSize: 20, color: Colors.white),),
              onPressed: () {
                print("点击了注册按钮");
              },
            ),
          )
        ],
      ),
    );
  }
}
