import 'package:flutter/material.dart';

class BaseViewModel extends ChangeNotifier {
  bool _busy = false;
  bool _mounted = true;

  get busy => _busy;

  set busy(bool value) {
    _busy = value;
    if (_mounted) this.notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
    _mounted = false;
  }
}
