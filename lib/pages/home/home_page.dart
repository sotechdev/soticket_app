import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:soticket/pages/home/login/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const route = '/';
  @override
  Widget build(BuildContext context) {
    Modular.to.navigate(LoginPage.route);
    return Scaffold(
      appBar: AppBar(
        title: Text('SOTicket'),
      ),
    );
  }
}
