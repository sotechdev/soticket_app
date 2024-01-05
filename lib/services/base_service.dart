import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

abstract class BaseService extends ChangeNotifier {
  @protected
  final api = http.Client();
  @protected
  Logger logger = Logger();
}
