// ignore_for_file: file_names, unnecessary_this
import 'package:flutter/material.dart';
import 'package:flutter_login/constants.dart';

class DefaultTextFormField extends StatelessWidget {
  final String? label;
  final String? hint;
  final TextEditingController? controller;
  final TextInputType type;
  const DefaultTextFormField({
    Key? key,
    this.label,
    this.hint,
    required this.type,
    this.controller

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: (label != null)
                ? Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      label!,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  )
                : null),
        TextFormField(
          style: TextStyle(color: cSecondaryColor),
          controller: controller,
          keyboardType: this.type,
          decoration: InputDecoration(
            hintText: this.hint != null ? this.hint! : null,
            hintStyle: const TextStyle(color: Colors.grey),
            filled: true,
            fillColor: cPrimaryColor,
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(cDefaultRadius),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
