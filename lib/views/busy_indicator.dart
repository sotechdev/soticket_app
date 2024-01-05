import 'package:flutter/material.dart';

class BusyIndicator extends StatelessWidget {
  const BusyIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Autenticando usuário ..."),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
