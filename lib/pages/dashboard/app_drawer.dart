import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:soticket/pages/dashboard/client_prices/client_prices_page.dart';
import 'package:soticket/pages/dashboard/dashboard_page.dart';
import 'package:soticket/pages/dashboard/prices/prices_page.dart';
import 'package:soticket/pages/dashboard/sales/sales_page.dart';
import 'package:soticket/pages/login/login_page.dart';
import 'package:soticket/stores/auth_store.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);
  void goTo(String route) {
    Modular.to.pop();
    Modular.to.navigate(route);
  }

  @override
  Widget build(BuildContext context) {
    final userStore = Modular.get<AuthStore>();
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(userStore.user!.name),
            accountEmail: Text(userStore.user!.email),
          ),
          ListTile(
            leading: Text('Painel'),
            selected: DashboardPage.route == Modular.to.path,
            onTap: () => goTo(DashboardPage.route),
          ),
          ListTile(
            leading: Text('Preços a vista'),
            selected: PricesPage.route == Modular.to.path,
            onTap: () => goTo(PricesPage.route),
          ),
          ListTile(
            leading: Text('Preços negociados'),
            selected: ClientPricesPage.route == Modular.to.path,
            onTap: () => goTo(ClientPricesPage.route),
          ),
          ListTile(
            leading: Text('Vendas'),
            selected: SalesPage.route == Modular.to.path,
            onTap: () => goTo(SalesPage.route),
          ),
          ListTile(
            leading: Text("Trocar de conta"),
            onTap: () {
              userStore.setUser(null);
              Modular.to.navigate(LoginPage.route);
            },
          )
        ],
      ),
    );
  }
}
