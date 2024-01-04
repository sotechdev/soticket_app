import 'package:flutter_modular/flutter_modular.dart';
import 'package:soticket/extensions/route_extensions.dart';
import 'package:soticket/guards/auth_guard.dart';
import 'package:soticket/pages/dashboard/client_prices/client_prices_page.dart';
import 'package:soticket/pages/dashboard/prices/prices_page.dart';
import 'package:soticket/pages/dashboard/sales/sales_page.dart';
import 'package:soticket/stores/auth_store.dart';

import 'core/fade_in_route.dart';
import 'pages/dashboard/dashboard_page.dart';
import 'pages/login/login_page.dart';
import 'pages/settings/settings_page.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.fadeInChild(
      LoginPage.route,
      child: (context) => LoginPage(),
    );
    r.fadeInChild(
      DashboardPage.route,
      child: (context) => DashboardPage(),
      guards: [AuthGuard()],
      children: [
        FadeInRoute(
          PricesPage.route,
          child: (context) => PricesPage(),
        ),
        FadeInRoute(
          ClientPricesPage.route,
          child: (context) => ClientPricesPage(),
        ),
        FadeInRoute(
          SalesPage.route,
          child: (context) => SalesPage(),
        )
      ],
    );
    r.fadeInChild(SettingsPage.route, child: (context) => SettingsPage());
  }

  @override
  void binds(Injector i) {
    i.addSingleton<AuthStore>(AuthStore.new);
  }
}
