import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sphere/screens/intro.dart';

import 'firebase_options.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

DatabaseReference usersRef =
FirebaseDatabase.instance.reference().child("users");

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Safe Sphere',
//       theme: ThemeData(
//         hintColor: Colors.deepPurple,
//         buttonTheme: ButtonTheme.of(context).copyWith(
//           buttonColor: Colors.blue,
//           textTheme: ButtonTextTheme.primary,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//         ), colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(background: Colors.blue),
//       ),
//       home:const Center(child: CircularProgressIndicator()),
//       //StreamBuilder(
//       //   stream: FirebaseAuth.instance.authStateChanges(),
//       //   builder: (ctx, userSnapshot) {
//       //     if (userSnapshot.connectionState == ConnectionState.waiting) {
//       //       return
//       //IntroOverboardPage(),
//     );
//     //    }
//     //  if (userSnapshot.hasData) {
//     //     return ChatScreen();
//     // }
//     // return AuthScreen();
//     // },
//     //));
//   }
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        hintColor: Colors.lightBlue,
      ),
      debugShowCheckedModeBanner: false,
      // defaultTransition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
      home: IntroOverboardPage(),
    );
  }
}