import 'package:flutter/material.dart';
import 'package:soticket/models/user.dart';

class AuthStore extends ChangeNotifier {
  User? _user;

  bool get isLogged => _user != null;
  User? get user => _user;

  setUser(User? user) {
    _user = user;
    notifyListeners();
  }
}
