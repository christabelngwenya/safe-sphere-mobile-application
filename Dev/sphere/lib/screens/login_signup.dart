import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'home.dart';
import 'signup.dart';

class LoginSignup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  late String _email, _password;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    final logo = Hero(
      tag: 'logo',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 50.0,
        child: Image.asset('assets/images/PProfile Image.png'),
      ),
    );

    final textUsername = TextField(
      cursorColor: Colors.purple,
      keyboardType: TextInputType.emailAddress,
      controller: usernameController,
      // onChanged: (value) {
      //   setState(() {
      //     _email = value.trim();
      //   });
      // },
      decoration: InputDecoration(
        hintText: 'Student Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    // -------------------------------------------------------
    TextFormField(
        decoration: const InputDecoration(
          prefixIcon: Icon(Iconsax.direct_right),
          // labelText: TTexts.email,
        )
    );
    const SizedBox(height: 20);

    /// Password
    TextFormField(
        decoration: InputDecoration(
          prefixIcon: const Icon(Iconsax.password_check),
          // labelText: TTexts.password,
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.eye_slash),
          ),
        )
    );

    //  ------------------------------------------------------

    final textPassword = TextField(
      cursorColor: Colors.purple,
      controller: passwordController,
      obscureText: true,
      // onChanged: (value) {
      //   setState(() {
      //     _password = value.trim();
      //   });
      // },
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final btnLogin = OutlinedButton(
        child: Text('Login'),
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          side: BorderSide(color: Colors.purple),
        ),
        onPressed: () {
          _email = usernameController.text.trim();
          _password = passwordController.text.trim();

          auth
              .signInWithEmailAndPassword(email: _email, password: _password)
              .then((_) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          });
        });

    final btnForgotPassword = TextButton(
      onPressed: () => null,
      child: Text(
        "Forgot Password?",
        style: new TextStyle(color: Colors.purple),
      ),
    );

    final btnSignup = TextButton(
      onPressed: () => {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Signup()))
      },
      child: Text(
        "Signup",
        style: new TextStyle(color: Colors.blue),
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Safe Sphere Login'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: new Center(
        child: new ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 25, right: 25),
          children: [
            logo,
            SizedBox(
              height: 40.0,
            ),
            textUsername,
            SizedBox(
              height: 8.0,
            ),
            textPassword,
            SizedBox(
              height: 20.0,
            ),
            btnLogin,
            btnForgotPassword,
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Don\'t have an account?'), btnSignup],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
