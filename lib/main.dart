import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_module.dart';
import 'app_widget.dart';

import './url_strategy_native.dart'
    if (dart.library.html) './url_strategy_web.dart';

void main() {
  urlConfig();
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
