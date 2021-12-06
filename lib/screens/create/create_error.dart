import 'package:flutter/material.dart';
import 'package:flutter_login/constants.dart';

class CreateError extends StatelessWidget {
  const CreateError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'Create Error',
      style: TextStyle(color: cSecondaryColor),
    ));
  }
}
