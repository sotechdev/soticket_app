import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:soticket/pages/login/login_page.dart';
import 'package:soticket/stores/auth_store.dart';

class AuthGuard extends RouteGuard {
  AuthGuard() : super(redirectTo: LoginPage.route);

  @override
  FutureOr<bool> canActivate(String path, ParallelRoute route) {
    return Modular.get<AuthStore>().isLogged;
  }
}
