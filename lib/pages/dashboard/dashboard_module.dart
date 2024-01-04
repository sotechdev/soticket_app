import 'package:flutter_modular/flutter_modular.dart';

import 'client_prices/client_prices_page.dart';
import 'dashboard_page.dart';
import 'prices/prices_page.dart';
import 'sales/sales_page.dart';

class DashboardModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/',
        child: (context) => const DashboardPage(),
        transition: TransitionType.noTransition);
    r.child(SalesPage.route,
        child: (context) => SalesPage(),
        transition: TransitionType.noTransition);
    r.child(ClientPricesPage.route,
        child: (context) => ClientPricesPage(),
        transition: TransitionType.noTransition);
    r.child(PricesPage.route,
        child: (context) => PricesPage(),
        transition: TransitionType.noTransition);
  }
}
