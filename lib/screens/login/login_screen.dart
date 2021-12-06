import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_login/components/Default_Button.dart';
import 'package:flutter_login/components/default_input.dart';
import 'package:flutter_login/constants.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  var url = Uri.parse('http://10.0.2.2:8081/login');

  _loginUser() async {
    Map data = {"username": username.text, "password": password.text};
    var response = await http.post(url, body: json.encode(data));
    if (response.statusCode == 200) {
      Navigator.pushReplacementNamed(context, '/logindone');
    } else {
      Navigator.pushReplacementNamed(context, '/loginerror');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Welcome back!',
          style: TextStyle(
            color: cSecondaryColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
          cDefaultPadding,
          0.0,
          cDefaultPadding,
          cDefaultPadding,
        ),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const Text(
                'We\'re so excited to see you again!',
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: cDefaultSpacing),
              const SizedBox(height: cDefaultSpacing),
              DefaultTextFormField(
                label: 'Email or Phone Number',
                type: TextInputType.emailAddress,
                controller: username,
              ),
              const SizedBox(height: cDefaultSpacing),
              DefaultTextFormField(
                label: 'Password',
                type: TextInputType.visiblePassword,
                controller: password,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot your password?',
                  style: TextStyle(fontSize: 12.5),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: cDefaultSpacing),
              DefaultElevatedButton(
                color: false,
                text: 'Login',
                function: _loginUser,
              ),
              Container(
                padding: const EdgeInsets.all(cDefaultPadding * 5),
                child: Image.asset(
                  'assets/images/frame.png',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
