import 'package:flutter/material.dart';
import 'chat_screen.dart';
import 'nav.dart';
import 'vac1.dart';
import 'vac2.dart';
import 'package:url_launcher/url_launcher.dart';

class Vacancies extends StatefulWidget {
  @override
  _Vacancies createState() => _Vacancies();
}

class _Vacancies extends State<Vacancies> {
	final int LikeCount = 7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Vacancy list',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF6B3A6B), // Set the background color to rgb(107, 58, 107)
      ),

    body: Container(
        alignment: Alignment.center,
        child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            Text(
              'VACANCIES',
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

     //     	Row (children: [ Expanded(child:

           ListTile(
                title: Text('Intern Student', style: TextStyle(fontWeight: FontWeight.bold)),
                hoverColor: Colors.grey,
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Vacancy1())),
              ),

       //    flex:2,),
//................................................................................................................................................

     //     	LIKE BUTTON

//..............................................................................................................................................
//           	Expanded(child:
//           	LikeButton (

//           			size: 20,
//           			likeCount: likeCount,
//           			countBuilder: (int count, bool isLiked, String text){
//           				var color = isLiked? Colors.red : Colors.grey;
//           				Widget result;
//           				if (count == 0) {
//           					result = Text ('favourite', style:TextStyle(color: color),);
//           				}
//           				else 
//           					result = Text (count >=8 ? (count/8.0).toStringAsFixed(1) + "k" :text, style:TextStyle(color: color),);
//           					return result;
//           				},
//           				likeCountAnimationType : likeCount < 8 ? LikeCountAnimationType.part : LikeCountAnimationType.none,
//           				likeCountPadding: EdgeInsets.only(left: 15.0),
//           				onTap : onLikeButtonTapped,
          			
//           		)
// ,flex:1,)
//...........................................................................................................................................
          	//,
          	//],),
          ListTile(
                title: Text('IT Department (Contact: 0775352554)'),
                hoverColor: Colors.grey,
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Vacancy1())),
              ),
          	ListTile(
                title: Text('2 hours ago', style: TextStyle(fontStyle: FontStyle.italic, color : Colors.red)),
                hoverColor: Colors.grey,
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Vacancy1())),
              ),
          ]
          ),
            ),),
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
          children: [ ListTile(
                title: Text('Canteen General Hand', style: TextStyle(fontWeight: FontWeight.bold)),
                hoverColor: Colors.grey,
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Vacancy2())),
              ),
          ListTile(
                title: Text('University Canteen (Contact: 0717546794)'),
                hoverColor: Colors.grey,
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Vacancy2())),
              ),
          	ListTile(
                title: Text('1 day ago', style: TextStyle(fontStyle: FontStyle.italic, color : Colors.red)),
                hoverColor: Colors.grey,
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Vacancy2())),
              ),
          ]
          ),
            ),),
            SizedBox(
              height: 10.0,
            ),
           
            OutlinedButton(
                child: Text('View More'),
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
            SizedBox(
              height: 20.0,
            ),
            
          ],
        )
       
 ,       )
,);
  }
   Future<bool> onLikeButtonTapped(bool isLiked) async {
  	return !isLiked;
  }
}

