import 'package:flutter/material.dart';
import 'nav.dart';
import 'package:url_launcher/url_launcher.dart';

class Vacancy2 extends StatefulWidget {
  @override
  _Vacancy2 createState() => _Vacancy2();
}

class _Vacancy2 extends State<Vacancy2> {
	final int LikeCount = 7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Safe Sphere'),
        backgroundColor: Colors.purple[700],
      ),

    body: Container(
        alignment: Alignment.center,
        child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            Text(
              'Canteen General Hand Student Wanted',
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
                title: Text('Canteen (Contact: 0717546794)', style: TextStyle(fontWeight: FontWeight.bold)),
                hoverColor: Colors.grey,
                onTap: () => {},
              ),

          ListTile(
                title: Text('Duties: keep food preparation areas clean, clean kitchen equipment and appliances, clean benchtops, floors, ovens and ranges, receive, lift, handle and store food deliveries, retrieve food items as requested by chefs, assist with food preparation, wash dishes, pots and utensils, ensure working areas are kept clear, throw trash out'),
                hoverColor: Colors.grey,
                onTap: () => {}
              ),
          ListTile(
                title: Text('Deadline: 20 September 2021'),
                hoverColor: Colors.grey,
                onTap: () => {}
              ),
          	ListTile(
                title: Text('1 day ago', style: TextStyle(fontStyle: FontStyle.italic, color : Colors.red)),
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
