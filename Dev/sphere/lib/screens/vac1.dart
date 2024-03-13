import 'package:flutter/material.dart';
import 'nav.dart';
import 'package:url_launcher/url_launcher.dart';

class Vacancy1 extends StatefulWidget {
  @override
  _Vacancy1 createState() => _Vacancy1();
}

class _Vacancy1 extends State<Vacancy1> {
	final int LikeCount = 7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Safe Sphere '),
        backgroundColor: Colors.purple[700],
      ),

    body: Container(
        alignment: Alignment.center,
        child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            Text(
              'Computer Lab Assistant Intern Student Wanted',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      spreadRadius: 2,
                      offset: Offset(0, 2))
                ],
              ),
              child: Container(child: Column(
          children: [

           ListTile(
                title: Text('IT Department (Contact: 0775352554)', style: TextStyle(fontWeight: FontWeight.bold)),
                hoverColor: Colors.grey,
                onTap: () => {},
              ),

          ListTile(
                title: Text('Duties: provides lab users with assistance on hardware issues, installing and using software programs, printing documents and understanding and using certain operating systems'),
                hoverColor: Colors.grey,
                onTap: () => {}
              ),
          ListTile(
                title: Text('Deadline: 5 March 2024'),
                hoverColor: Colors.grey,
                onTap: () => {}
              ),
          	ListTile(
                title: Text('2 hours ago', style: TextStyle(fontStyle: FontStyle.italic, color : Colors.red)),
                hoverColor: Colors.grey,
                onTap: () => {}
              ),
          ]
          ),
            ),),
            SizedBox(
              height: 15.0,
            ),
            OutlinedButton(
        child: Text('Apply'),
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                side: BorderSide(color: Colors.purple),
              ),
        onPressed: () {
 _launchURL(String url) async {
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              }

                              const url =
                                  'https://ww5.msu.ac.zw/vacancies/';
                              _launchURL(url);
                            },
          ),

          ],
        )
       
 ,       )
,);
  }
}
