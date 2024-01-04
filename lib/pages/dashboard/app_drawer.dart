import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:soticket/pages/dashboard/client_prices/client_prices_page.dart';
import 'package:soticket/pages/dashboard/dashboard_page.dart';
import 'package:soticket/pages/dashboard/prices/prices_page.dart';
import 'package:soticket/pages/dashboard/sales/sales_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);
  void goTo(String route) {
    if (route == DashboardPage.route) {
      Modular.to.navigate(route);
    } else {
      Modular.to.navigate('${DashboardPage.route}$route');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
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
        ],
      ),
    );
  }
}
