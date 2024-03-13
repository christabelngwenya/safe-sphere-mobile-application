import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../home.dart';

class TLoginForm extends StatefulWidget {
  const TLoginForm({
    super.key,
  });

  @override
  State<TLoginForm> createState() => _TLoginFormState();
}

class _TLoginFormState extends State<TLoginForm> {
  late String _email, _password;
  final auth = FirebaseAuth.instance;
  bool isLoading = false; // Add this line to track loading state
  bool passwordVisible = false;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();
    return Form(
        key: formKey,
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          /// Email
          //   TextField(
          //   cursorColor: Colors.blue,
          //   keyboardType: TextInputType.emailAddress,
          //   controller: usernameController,
          //   onChanged: (value) {
          //     setState(() {
          //       _email = value.trim();
          //     });
          //   },
          //   decoration: InputDecoration(
          //     hintText: 'Student Email',
          //     contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          //     border: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //   ),
          // ),
          TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: usernameController,
              // onChanged: (value) {
              //   setState(() {
              //     _email = value.trim();
              //   });
              // },
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                label: Text("Email"),
              )),
          const SizedBox(height: 20),

          /// Password
          //   ///
          // TextField(
          //   cursorColor: Colors.purple,
          //   controller: passwordController,
          //   obscureText: true,
          //   onChanged: (value) {
          //     setState(() {
          //       _password = value.trim();
          //     });
          //   },
          //   decoration: InputDecoration(
          //     hintText: 'Password',
          //     // contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          //     border: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //   ),
          // ),
          TextFormField(
              controller: passwordController,
                obscureText: true,
                // onChanged: (value) {
                //   setState(() {
                //     _password = value.trim();
                //   });
                // },
              decoration: InputDecoration(
            prefixIcon: const Icon(Iconsax.password_check),
            label: const Text("Password"),
            suffixIcon: IconButton(
              onPressed: () {
                // Show or hide password
                setState(() {
                  passwordVisible = !passwordVisible;
                });
              },
              icon: Icon((passwordVisible == true
                  ? Iconsax.eye_slash
                : Iconsax.eye)),
            ),
          )),
          const SizedBox(height: 20),

          /// Forgot Password & Remember Me
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Remember Me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text("Remember me")
                ],
              ),

              /// Forgot Password
              TextButton(
                onPressed: () {},
                child: const Text("Forget Password"),
              ),
            ],
          ),
          const SizedBox(height: 20),

          /// Login Button

        SizedBox(
        width: double.infinity,
          child: OutlinedButton(
            child: isLoading
                ? CircularProgressIndicator() // Show the loader if isLoading is true
                : Text('Login'),
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              side: BorderSide(color: Colors.purple),
            ),
            onPressed: () {
              setState(() {
                isLoading = true; // Set isLoading to true when the button is pressed
              });

              auth
                  .signInWithEmailAndPassword(email: _email, password: _password)
                  .then((_) {
                // Perform the login operation here

                // After the login is successful, navigate to the Home screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              }).catchError((error) {
                // Handle any login errors here

              }).whenComplete(() {
                setState(() {
                  isLoading = false; // Set isLoading back to false when the login process is complete
                });
              });
            },
          ),
        ),
          const SizedBox(height: 20),

          /// Create Account Button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {},
              child: Text("Create Account"),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    ));
  }
}
