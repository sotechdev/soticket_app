import 'package:flutter/material.dart';

class AuthStore extends ChangeNotifier {
  bool _isLogged = false;

  bool get isLogged => _isLogged;

  setLogged(bool logged) {
    _isLogged = logged;
    notifyListeners();
  }
}
