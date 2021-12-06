import 'package:flutter/material.dart';
import 'package:flutter_login/constants.dart';

class LoginDone extends StatelessWidget {
  const LoginDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'Login Done',
      style: TextStyle(color: cSecondaryColor),
    ));
  }
}
