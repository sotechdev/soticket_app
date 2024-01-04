import 'package:flutter/material.dart';
import 'package:soticket/pages/dashboard/app_drawer.dart';

class ClientPricesPage extends StatelessWidget {
  const ClientPricesPage({Key? key}) : super(key: key);
  static const route = '/client_prices';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('Preços negociados'),
      ),
      body: Text('Preços negociados'),
    );
  }
}
