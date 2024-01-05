import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';
import 'package:soticket/services/auth_service.dart';
import 'package:soticket/stores/auth_store.dart';

class LoginViewModel extends ChangeNotifier {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final _loginStore = Modular.get<AuthStore>();
  final service = AuthService();
  bool _busy = false;
  final _logger = Logger();

  void setBusy(bool busy) {
    _busy = busy;
    notifyListeners();
  }

  Future authenticate(BuildContext context) async {
    setBusy(true);
    try {
      var user = await service.authenticate(
          userNameController.text, passwordController.text, null);
      _loginStore.setUser(user);
    } catch (e) {
      _logger.e(e);
      const snackBar = SnackBar(
        content: Text(
          "Ocorreu um erro ao tentar autenticar no servidor, verifique o log para mais informações",
          style: TextStyle(color: Colors.red),
        ),
      );
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }

    setBusy(false);
  }

  bool get busy => _busy;
}
