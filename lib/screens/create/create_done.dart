import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/constants.dart';

class CreateDone extends StatelessWidget {
  const CreateDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'Create Done',
      style: TextStyle(color: cSecondaryColor),
    ));
  }
}
