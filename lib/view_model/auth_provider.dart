import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool _isRemember = false;
  bool get isRemember => _isRemember;

  void setRemember(bool val) {
    _isRemember = val;
    notifyListeners();
  }
}
