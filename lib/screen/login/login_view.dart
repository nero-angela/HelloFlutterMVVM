import 'package:flutter/material.dart';
import 'package:flutter_tutorial/router.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        // hide softkeyboard when click the background
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        behavior: HitTestBehavior.translucent,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _header(),
              _textField(context),
              _loginButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Container(
      height: 100,
      child: Text('Login', style: TextStyle(fontSize: 32)),
    );
  }

  Widget _textField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'User Id',
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(8),
          ),
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: double.infinity,
      height: 50,
      child: FlatButton(
        color: Colors.pinkAccent,
        onPressed: () {
          Navigator.pushNamed(context, RoutePaths.Home);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: Colors.red),
        ),
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
