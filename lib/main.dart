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

  final registerFormKey = GlobalKey<FormState>();
  String username, password;

  void registerForm() {
    registerFormKey.currentState.save();
    print("username:$username password:$password");
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
                icon: Icon(Icons.people),
                labelText: "用户名或手机号"
            ),
            onSaved: (value) {
              this.username = value;
            },
            validator: (value) {
              if (value.isEmpty) {
                return "账号不能为空";
              }
              return null;
            },
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: "密码"
            ),
            onSaved: (value) {
              this.password = value;
            },
            validator: (value) {
              if (value.isEmpty) {
                return "密码不能为空";
              }
              return null;
            },
          ),
          SizedBox(height: 16,),
          Container(
            width: double.infinity,
            height: 44,
            child: RaisedButton(
              color: Colors.lightGreen,
              child: Text("登 录", style: TextStyle(fontSize: 20, color: Colors.white),),
              onPressed: registerForm,
            ),
          )
        ],
      ),
    );
  }
}
