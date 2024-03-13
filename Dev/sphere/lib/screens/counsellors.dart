import 'package:flutter/material.dart';
import 'chat_screen.dart';
import 'chat_screen2.dart';
import 'nav.dart';
import 'package:url_launcher/url_launcher.dart';

class Counsellors extends StatefulWidget {
  @override
  _CounsellorsState createState() => _CounsellorsState();
}

class _CounsellorsState extends State<Counsellors> {
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Top Counsellors'),
        backgroundColor: Colors.purple[700],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 15.0),
            Container(
              color: Colors.black.withOpacity(0.2),
              width: MediaQuery.of(context).size.width * 0.9,
              height: 1,
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80),
              ),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Image.asset(
                    'assets/images/profile.png', // Replace with your actual asset path
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Text(
              'Sarah L. Mutiwasekwa',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: IconButton(
                    padding: EdgeInsets.all(5.0),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChatScreen()),
                      );
                    },
                    icon: Icon(Icons.chat, color: Colors.purple),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    padding: EdgeInsets.all(5.0),
                    onPressed: () {
                      const url = 'tel:+263775715015';
                      _launchURL(url);
                    },
                    icon: Icon(Icons.phone, color: Colors.purple),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.black.withOpacity(0.2),
              width: MediaQuery.of(context).size.width * 0.9,
              height: 1,
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80),
              ),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Image.asset(
                    'assets/images/profile.png', // Replace with your actual asset path
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Text(
              'Antony Makoni',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: IconButton(
                    padding: EdgeInsets.all(5.0),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChatScreen2()),
                      );
                    },
                    icon: Icon(Icons.chat, color: Colors.purple),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    padding: EdgeInsets.all(5.0),
                    onPressed: () {
                      const url = 'tel:+263772108108';
                      _launchURL(url);
                    },
                    icon: Icon(Icons.phone, color: Colors.purple),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.black.withOpacity(0.2),
              width: MediaQuery.of(context).size.width * 0.9,
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}