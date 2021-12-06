import 'package:flutter/material.dart';
import 'package:flutter_login/constants.dart';

class LoginError extends StatelessWidget {
  const LoginError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'Login Error',
      style: TextStyle(color: cSecondaryColor),
    ));
  }
}
