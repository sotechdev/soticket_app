import 'package:flutter_modular/flutter_modular.dart';
import 'package:soticket/pages/dashboard/dashboard_module.dart';

import 'pages/dashboard/dashboard_page.dart';
import 'pages/home/home_page.dart';
import 'pages/home/login/login_page.dart';
import 'pages/core/settings/settings_page.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child(HomePage.route,
        child: (context) => const HomePage(),
        transition: TransitionType.noTransition);
    r.child(LoginPage.route,
        child: (context) => LoginPage(),
        transition: TransitionType.noTransition);
    r.module(DashboardPage.route, module: DashboardModule());
    r.child(SettingsPage.route,
        child: (context) => SettingsPage(),
        transition: TransitionType.noTransition);
  }
}
