import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:soticket/pages/dashboard/app_drawer.dart';
import 'package:soticket/pages/settings/settings_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});
  static const route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: const Text('SOTicket - Painel'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      floatingActionButton: IconButton(
        icon: const Icon(Icons.settings),
        onPressed: () => Modular.to.pushNamed(SettingsPage.route),
      ),
      body: RouterOutlet(),
    );
  }
}
