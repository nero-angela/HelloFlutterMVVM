import 'package:flutter/material.dart';
import 'package:flutter_tutorial/screen/base_view_model.dart';
import 'package:flutter_tutorial/service/authentication_service.dart';

class LoginViewModel extends BaseViewModel {
  String _id = '';
  bool _isValid = false;
  AuthenticationService _authenticationService;

  LoginViewModel({
    @required AuthenticationService authenticationService,
  }) : _authenticationService = authenticationService;

  // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  List<String> _validList = List.generate(10, (i) => (i + 1).toString());

  get isValid => _isValid;

  get id => _id;

  set id(String id) {
    _id = id;
    _isValid = _validList.contains(_id); // check validation
    notifyListeners();
  }

  Future<bool> login(String userIdText) async {
    setBusy(true);
    var userId = int.tryParse(userIdText);
    var success = await _authenticationService.login(userId);
    setBusy(false);
    return success;
  }
}
