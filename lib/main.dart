import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:soticket/pages/dashboard/dashboard_page.dart';
import 'package:soticket/pages/home/home_page.dart';
import 'package:soticket/pages/login/login_page.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => const HomePage());
    r.child('/login', child: (context) => const LoginPage());
    r.child('/home', child: (context) => const DashboardPage());
  }
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'SOTicket',
      theme: ThemeData(primarySwatch: Colors.purple),
      routerConfig: Modular.routerConfig,
    );
  }
}
