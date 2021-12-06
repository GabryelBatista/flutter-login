import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/screens/create/create_done.dart';
import 'package:flutter_login/screens/create/create_error.dart';
import 'package:flutter_login/screens/create/create_screen.dart';
import 'package:flutter_login/screens/home/home_screen.dart';
import 'package:flutter_login/screens/login/login_done.dart';
import 'package:flutter_login/screens/login/login_error.dart';
import 'package:flutter_login/screens/login/login_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/create': (context) => const CreateScreen(),
        '/logindone': (context) => const LoginDone(),
        '/createdone': (context) => const CreateDone(),
        '/loginerror': (context) => const LoginError(),
        '/createerror': (context) => const CreateError(),
      },
    );
  }
}
