import 'package:flutter/material.dart';
import 'package:flutter_guards/flutter_guards.dart';
import 'package:get/get.dart';
import 'package:la_isla/controllers/authentication_controller.dart';
import 'package:la_isla/pages/login_page.dart';

class AuthGuardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: AuthController(),
        builder: (AuthController authCtrl) => AuthGuard(
            authStream: authCtrl.authState.stream,
            signedIn: Text('signedIn'),
            signedOut: LoginPage()));
  }
}
