import 'package:flutter/widgets.dart';

class LoginViewModel extends ChangeNotifier {
  String _id = '';

  bool _isValid = false;

  // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  List<String> _validList = List.generate(10, (i) => (i + 1).toString());

  get isValid => _isValid;

  get id => _id;

  set id(String id) {
    _id = id;
    _isValid = _validList.contains(_id); // check validation
    notifyListeners();
  }
}
