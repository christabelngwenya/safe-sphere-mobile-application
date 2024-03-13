import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login_signup.dart';
import 'package:sphere/main.dart';

class Signup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _SignupState();
}

class _SignupState extends State<Signup> {
  late String _email, _password, _username, _confirmpassword;
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final textUsername = TextField(
      cursorColor: Colors.purple,
      controller: usernameController,
      onChanged: (value) {
        setState(() {
          _username = value.trim();
        });
      },
      decoration: InputDecoration(
        hintText: 'Enter Username',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final textEmail = TextField(
      keyboardType: TextInputType.emailAddress,
      cursorColor: Colors.purple,
      controller: emailController,
      onChanged: (value) {
        setState(() {
          _email = value.trim();
        });
      },
      decoration: InputDecoration(
        hintText: 'Enter Student Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final textPassword = TextField(
      cursorColor: Colors.purple,
      controller: passwordController,
      onChanged: (value) {
        setState(() {
          _password = value.trim();
        });
      },
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Enter Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final textConfirmPassword = TextField(
      cursorColor: Colors.purple,
      controller: confirmPasswordController,
      onChanged: (value) {
        setState(() {
          _confirmpassword = value.trim();
        });
      },
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Re-enter Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final btnSignup = OutlinedButton(
      child: Text('Signup'),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        side: BorderSide(color: Colors.purple),
      ),
      onPressed: () {
        if (passwordController.text.length < 8) {
          displayToastMessage(
              "Password must be at least 8 characters long", context);
        } else if (!emailController.text.contains("@")) {
          displayToastMessage("Email address not valid", context);
        } else if (passwordController.text != confirmPasswordController.text) {
          displayToastMessage("Passwords do not match!", context);
        } else {
          registerNewUser(context);
        }

        auth.createUserWithEmailAndPassword(email: _email, password: _password);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginSignup()));
      },
    );

    final btnLogin = TextButton(
      onPressed: () => {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginSignup()))
      },
      child: Text(
        "Login",
        style: new TextStyle(color: Colors.purple),
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Safe Sphere Signup'),
        centerTitle: true,
        backgroundColor: Colors.purple[700],
      ),
      body: new Center(
        child: new ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 25, right: 25),
          children: [
            textUsername,
            SizedBox(
              height: 20.0,
            ),
            textEmail,
            SizedBox(
              height: 20.0,
            ),
            textPassword,
            SizedBox(
              height: 20.0,
            ),
            textConfirmPassword,
            SizedBox(
              height: 20.0,
            ),
            btnSignup,
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Already have an account?'), btnLogin],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void registerNewUser(BuildContext context) async {
    final User? user = (await auth
            .createUserWithEmailAndPassword(
                email: emailController.text, password: passwordController.text)
            .catchError((errMsg) {
      displayToastMessage("Error: " + errMsg.toString(), context);
    }))
        .user;
    if (user != null) {
      Map userDataMap = {
        "email": emailController.text.trim(),
        "username": usernameController.text.trim()
      };
      usersRef.child(user.uid).set(userDataMap);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginSignup()));
    } else {
      displayToastMessage("New User has not been created", context);
    }
  }
}

class SignupSuccess {}

displayToastMessage(String message, BuildContext context) {
  Fluttertoast.showToast(msg: message);
}
