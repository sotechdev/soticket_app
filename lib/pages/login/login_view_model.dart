import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:soticket/stores/auth_store.dart';

class LoginViewModel extends ChangeNotifier {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final _loginStore = Modular.get<AuthStore>();

  void authenticate(BuildContext context) {
    _loginStore.setLogged(true);
  }
}
