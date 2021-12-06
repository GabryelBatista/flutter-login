import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_login/components/Default_Button.dart';
import 'package:flutter_login/components/default_input.dart';
import 'package:flutter_login/constants.dart';
import 'package:http/http.dart' as http;

class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController day = TextEditingController();
  TextEditingController mounth = TextEditingController();
  TextEditingController year = TextEditingController();

  var url = Uri.parse('http://10.0.2.2:8081/create');

  Future _createUser() async {
    String birth = '${day.text}/${mounth.text}/${year.text}';
    Map data = {
      'email': email.text,
      'username': username.text,
      'password': password.text,
      'birth': birth
    };
    var response = await http.post(url, body: json.encode(data));
    if (response.statusCode == 200) {
      Navigator.pushReplacementNamed(context, '/createdone');
    } else {
      Navigator.pushReplacementNamed(context, '/createerror');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Create an account',
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
                controller: email,
              ),
              const SizedBox(height: cDefaultSpacing),
              DefaultTextFormField(
                label: 'Username',
                type: TextInputType.name,
                controller: username,
              ),
              const SizedBox(height: cDefaultSpacing),
              DefaultTextFormField(
                label: 'Password',
                type: TextInputType.visiblePassword,
                controller: password,
              ),
              const SizedBox(height: cDefaultSpacing),
              Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Date of Birth',
                    style: TextStyle(color: Colors.grey),
                  )),
              Row(
                children: [
                  Expanded(
                      child: DefaultTextFormField(
                    type: TextInputType.datetime,
                    hint: 'Day',
                    controller: day,
                  )),
                  const SizedBox(
                    width: cDefaultSpacing,
                  ),
                  Expanded(
                      child: DefaultTextFormField(
                    type: TextInputType.datetime,
                    hint: 'Mounth',
                    controller: mounth,
                  )),
                  const SizedBox(
                    width: cDefaultSpacing,
                  ),
                  Expanded(
                      child: DefaultTextFormField(
                    type: TextInputType.datetime,
                    hint: 'Year',
                    controller: year,
                  )),
                ],
              ),
              const SizedBox(height: cDefaultSpacing),
              const SizedBox(height: cDefaultSpacing),
              DefaultElevatedButton(
                color: false,
                text: 'Create',
                function: _createUser,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text(
                  'Already have an account?',
                  style: TextStyle(fontSize: 12.5),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}