import 'package:flutter/material.dart';
import 'package:soticket/pages/dashboard/app_drawer.dart';

class SalesPage extends StatelessWidget {
  const SalesPage({Key? key}) : super(key: key);
  static const route = '/sales';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('Vendas'),
      ),
      body: Text('Vendas'),
    );
  }
}
