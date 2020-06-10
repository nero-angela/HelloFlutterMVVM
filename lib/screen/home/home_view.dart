import 'package:flutter/material.dart';
import 'package:flutter_tutorial/model/user.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Text('Welcome ${Provider.of<User>(context).name}'),
      ),
    );
  }
}
