import 'package:flutter/material.dart';
import 'package:sphere/screens/auth/signin/widgets/login_header.dart';
import 'package:sphere/screens/auth/signin/widgets/loginform.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column (
                  children: [
                    const TLoginHeader(),
                    const TLoginForm(),

                  ]
              ),
            )
        )
    );
  }
}