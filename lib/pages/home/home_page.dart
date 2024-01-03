import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.to.navigate('/login');
    return Scaffold(
      appBar: AppBar(
        title: Text('SOTicket'),
      ),
    );
  }
}
