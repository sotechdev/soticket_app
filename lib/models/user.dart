import 'dart:convert';

import 'package:flutter/foundation.dart';

class User {
  final String id;
  final String name;
  final String email;
  final String accessToken;
  final String idToken;
  final String tokenType;
  final int expiresIn;
  final int refreshExpiresIn;
  final String refreshToken;
  final String scope;
  final String sessionState;
  final List<String> roles;
  final bool emailVerified;
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.accessToken,
    required this.idToken,
    required this.tokenType,
    required this.expiresIn,
    required this.refreshExpiresIn,
    required this.refreshToken,
    required this.scope,
    required this.sessionState,
    required this.roles,
    required this.emailVerified,
  });

  User copyWith({
    String? id,
    String? name,
    String? email,
    String? accessToken,
    String? idToken,
    String? tokenType,
    int? expiresIn,
    int? refreshExpiresIn,
    String? refreshToken,
    String? scope,
    String? sessionState,
    List<String>? roles,
    bool? emailVerified,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      accessToken: accessToken ?? this.accessToken,
      idToken: idToken ?? this.idToken,
      tokenType: tokenType ?? this.tokenType,
      expiresIn: expiresIn ?? this.expiresIn,
      refreshExpiresIn: refreshExpiresIn ?? this.refreshExpiresIn,
      refreshToken: refreshToken ?? this.refreshToken,
      scope: scope ?? this.scope,
      sessionState: sessionState ?? this.sessionState,
      roles: roles ?? this.roles,
      emailVerified: emailVerified ?? this.emailVerified,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'accessToken': accessToken,
      'idToken': idToken,
      'tokenType': tokenType,
      'expiresIn': expiresIn,
      'refreshExpiresIn': refreshExpiresIn,
      'refreshToken': refreshToken,
      'scope': scope,
      'sessionState': sessionState,
      'roles': roles,
      'emailVerified': emailVerified,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
      accessToken: map['accessToken'] as String,
      idToken: map['idToken'] as String,
      tokenType: map['tokenType'] as String,
      expiresIn: map['expiresIn'].toInt() as int,
      refreshExpiresIn: map['refreshExpiresIn'].toInt() as int,
      refreshToken: map['refreshToken'] as String,
      scope: map['scope'] as String,
      sessionState: map['sessionState'] as String,
      roles: List<String>.from((map['roles'] as List<dynamic>)),
      emailVerified: map['emailVerified'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, accessToken: $accessToken, idToken: $idToken, tokenType: $tokenType, expiresIn: $expiresIn, refreshExpiresIn: $refreshExpiresIn, refreshToken: $refreshToken, scope: $scope, sessionState: $sessionState, roles: $roles, emailVerified: $emailVerified)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.email == email &&
        other.accessToken == accessToken &&
        other.idToken == idToken &&
        other.tokenType == tokenType &&
        other.expiresIn == expiresIn &&
        other.refreshExpiresIn == refreshExpiresIn &&
        other.refreshToken == refreshToken &&
        other.scope == scope &&
        other.sessionState == sessionState &&
        listEquals(other.roles, roles) &&
        other.emailVerified == emailVerified;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        email.hashCode ^
        accessToken.hashCode ^
        idToken.hashCode ^
        tokenType.hashCode ^
        expiresIn.hashCode ^
        refreshExpiresIn.hashCode ^
        refreshToken.hashCode ^
        scope.hashCode ^
        sessionState.hashCode ^
        roles.hashCode ^
        emailVerified.hashCode;
  }
}
