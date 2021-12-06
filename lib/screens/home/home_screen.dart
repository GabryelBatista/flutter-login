import 'package:flutter/material.dart';
import 'package:flutter_login/components/Default_Button.dart';
import 'package:flutter_login/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(cDefaultPadding),
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                'assets/images/novaLogo_branca.png',
                width: MediaQuery.of(context).size.width * 0.625,
              ),
            ),
            const Text(
              'Welcome to Tecnizium',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: cDefaultSpacing),
            const Text(
              'Join over 200 million people who use Tecnizium to chat with friends for free.',
              style: TextStyle(
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: cDefaultSpacing),
            const SizedBox(height: cDefaultSpacing),
            const DefaultElevatedButton(
                color: true, text: 'Register', route: '/create'),
            const SizedBox(height: cDefaultSpacing),
            const DefaultElevatedButton(color: false, text: 'Login', route: '/login'),
          ],
        ),
      ),
    );
  }
}
