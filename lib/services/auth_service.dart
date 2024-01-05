import 'dart:convert';

import 'package:soticket/core/config.dart';
import 'package:soticket/models/user.dart';
import 'package:soticket/services/base_service.dart';

class AuthService extends BaseService {
  AuthService() : super();
  Future<User?> authenticate(
      String username, String password, String? totp) async {
    var url = Uri.parse('$apiUrl/authentication');
    var response = await api.post(url,
        body: jsonEncode({'username': username, 'password': password}),
        headers: {'Content-Type': 'application/json; charset=UTF-8'});
    if (response.statusCode == 200) {
      return User.fromJson(response.body);
    } else if (response.statusCode == 401) {
      return null;
    }
    logger.e("Erro na autenticação: ${response.body}");
    throw Exception("Erro ao realizar a autenticação no servidor");
  }
}
