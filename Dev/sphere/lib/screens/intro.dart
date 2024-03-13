import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';
import 'package:sphere/screens/login_signup.dart';

import 'auth/signin/signin.dart';

class IntroOverboardPage extends StatefulWidget {
  static const routeName = '/IntroOverboardPage';

  @override
  _IntroOverboardPageState createState() => _IntroOverboardPageState();
}

class _IntroOverboardPageState extends State<IntroOverboardPage>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: OverBoard(
        pages: pages,
        showBullets: true,
        skipCallback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        finishCallback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginSignup()),
          );
        },
      ),
    );
  }

  final pages = [
    PageModel(
      color: Color.fromRGBO(55, 41, 75, 1.0), // Changed to the desired RGB color
      imageAssetPath: 'assets/images/PProfile Image.png',
      title: 'Online Counselling',
      body: 'Communicate in real time with Counsellors',
      doAnimateImage: true,
    ),
    PageModel(
      color: Color.fromRGBO(55, 41, 75, 1.0), // Changed to the desired RGB color
      imageAssetPath: 'assets/images/02.png',
      title: 'University News & Notices',
      body: 'Stay informed with the latest News & Notices',
      doAnimateImage: true,
    ),
    PageModel(
      color: Color.fromRGBO(55, 41, 75, 1.0), // Changed to the desired RGB color
      imageAssetPath: 'assets/images/03.png',
      title: 'Report Cases',
      body: 'Report any cases of abuse ',
      doAnimateImage: true,
    ),
    PageModel.withChild(
      child: Padding(
        padding: EdgeInsets.only(bottom: 25.0),
        child: Image.asset(
          'assets/images/PProfile Image.png',
          width: 300.0,
          height: 300.0,
        ),
      ),
      color: Color.fromRGBO(55, 41, 75, 1.0), // Changed to the desired RGB color
      doAnimateChild: false,
    ),
  ];
}