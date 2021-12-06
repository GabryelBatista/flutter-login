// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_login/constants.dart';

class DefaultElevatedButton extends StatelessWidget {
  final bool color;
  final String text;
  final String? route;
  final Function? function;
  const DefaultElevatedButton(
      {Key? key,
      required this.color,
      required this.text,
      this.route,
      this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          function != null ?function!() : null;
          route != null ? Navigator.pushNamed(context, route!) : null;
        },
        style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(15.0)),
          backgroundColor: color
              ? MaterialStateProperty.all(cPrimaryColor)
              : MaterialStateProperty.all(cSecondaryColor),
        ),
        child: Text(
          text,
          style: TextStyle(
              color: color ? cSecondaryColor : cPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 15),
        ),
      ),
    );
  }
}
