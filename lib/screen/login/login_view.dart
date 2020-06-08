import 'package:flutter/material.dart';
import 'package:flutter_tutorial/router.dart';
import 'package:flutter_tutorial/screen/base_view.dart';
import 'package:flutter_tutorial/screen/login/login_view_model.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      model: LoginViewModel(),
      child: _header(),
      builder: (BuildContext context, LoginViewModel model, Widget child) {
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
                  child,
                  _textField(context, model),
                  _validation(context, model),
                  _loginButton(context, model),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _header() {
    return Container(
      height: 100,
      child: Text('Login', style: TextStyle(fontSize: 32)),
    );
  }

  Widget _textField(BuildContext context, LoginViewModel model) {
    return TextField(
      onChanged: (id) => model.id = id,
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

  Widget _validation(BuildContext context, LoginViewModel model) {
    return Text(
      model.isValid || model.id.isEmpty ? '' : 'Enter a number between 1 - 10',
      style: TextStyle(color: Colors.pinkAccent),
    );
  }

  Widget _loginButton(BuildContext context, LoginViewModel model) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: double.infinity,
      height: 50,
      child: FlatButton(
        color: Colors.pinkAccent,
        disabledColor: Colors.grey,
        onPressed: model.isValid
            ? () => Navigator.pushNamed(context, RoutePaths.Home)
            : null,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
