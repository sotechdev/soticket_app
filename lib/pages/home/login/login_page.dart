import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:soticket/pages/dashboard/dashboard_page.dart';
import 'package:soticket/pages/home/login/login_view_model.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final viewModel = LoginViewModel();
  static const route = '/login';
  void onLogin() {
    Modular.to.navigate(DashboardPage.route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width / 2,
          height: 800,
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 35),
                  child: Row(
                    children: [
                      Text(
                        'Para usar o sistema é obrigatório realizar a autenticação!',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
                TextField(
                  decoration:
                      const InputDecoration(label: Text('Nome de usuário')),
                  controller: viewModel.userNameController,
                ),
                TextField(
                  decoration: const InputDecoration(label: Text('Senha')),
                  obscureText: true,
                  controller: viewModel.passwordController,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: FilledButton(
                    onPressed: onLogin,
                    child: const Text('Autenticar no sistema'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
