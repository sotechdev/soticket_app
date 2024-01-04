import 'package:flutter/material.dart';
import 'package:soticket/pages/dashboard/app_drawer.dart';

class PricesPage extends StatelessWidget {
  const PricesPage({Key? key}) : super(key: key);
  static const route = '/prices';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('Preços a vista'),
      ),
      body: Text('Preços a vista'),
    );
  }
}
