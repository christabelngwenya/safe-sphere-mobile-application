import 'package:flutter/material.dart';
import 'chat_screen.dart';
import 'nav.dart';
import 'package:url_launcher/url_launcher.dart';


class Notices extends StatefulWidget {
  @override
  _Notices createState() => _Notices();
}

class _Notices extends State<Notices> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Notices'),
        backgroundColor: Colors.purple[700],
      ),

    body: Container (
        alignment: Alignment.center,
        child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            SizedBox(
              height: 2.0,
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
                title: Text('Roadmap for Orientation, Practical sessions and examinations: September-October 2024', style: TextStyle(fontWeight: FontWeight.bold)),
                hoverColor: Colors.grey,
                onTap: () {
                              _launchURL(String url) async {
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              }

                              const url =
                                  'https://ww5.msu.ac.zw/blog/notice/revised-roadmap-for-2021/';
                              _launchURL(url);
                            },
              
              ),

          
            ListTile(
                title: Text('28/02/2024', style: TextStyle(fontStyle: FontStyle.italic, color : Colors.grey)),
                hoverColor: Colors.grey,
                onTap: () {
                              _launchURL(String url) async {
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              }

                              const url =
                                  'https://ww5.msu.ac.zw/blog/notice/revised-roadmap-for-2024/';
                              _launchURL(url);
                            },
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
                title: Text('March 2024 list of all accepted students', style: TextStyle(fontWeight: FontWeight.bold)),
                hoverColor: Colors.grey,
                onTap: () {
                              _launchURL(String url) async {
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              }

                              const url =
                                  'http://web.msu.ac.zw/accepted/';
                              _launchURL(url);
                            },
              ),
      
            ListTile(
                title: Text('27/02/2024', style: TextStyle(fontStyle: FontStyle.italic, color : Colors.grey)),
                hoverColor: Colors.grey,
                onTap: () {
                              _launchURL(String url) async {
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              }

                              const url =
                                  'http://web.msu.ac.zw/accepted/';
                              _launchURL(url);
                            },
              ),
          ]
          ),
            ),),
            SizedBox(
              height: 10.0,
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
                    title: Text('Prayer Meeting On Campus', style: TextStyle(fontWeight: FontWeight.bold)),
                    hoverColor: Colors.grey,
                    onTap: () {
                      _launchURL(String url) async {
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      }

                      const url =
                          '';
                      _launchURL(url);
                    },
                  ),

                    ListTile(
                      title: Text('27/02/2024', style: TextStyle(fontStyle: FontStyle.italic, color : Colors.grey)),
                      hoverColor: Colors.grey,
                      onTap: () {
                        _launchURL(String url) async {
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        }

                        const url =
                            '';
                        _launchURL(url);
                      },
                    ),
                  ]
              ),
              ),),
            SizedBox(
              height: 10.0,
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
                    title: Text('Seminors for Physicology', style: TextStyle(fontWeight: FontWeight.bold)),
                    hoverColor: Colors.grey,
                    onTap: () {
                      _launchURL(String url) async {
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      }

                      const url =
                          'https://internationalconferencealerts.com/';
                      _launchURL(url);
                    },
                  ),

                    ListTile(
                      title: Text('27/02/2024', style: TextStyle(fontStyle: FontStyle.italic, color : Colors.grey)),
                      hoverColor: Colors.grey,
                      onTap: () {
                        _launchURL(String url) async {
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        }

                        const url =
                            'http://web.msu.ac.zw/accepted/';
                        _launchURL(url);
                      },
                    ),
                  ]
              ),
              ),),
            SizedBox(
              height: 10.0,
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
                title: Text('Postponement of examinations', style: TextStyle(fontWeight: FontWeight.bold)),
                hoverColor: Colors.grey,
                onTap: () {
                              _launchURL(String url) async {
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              }

                              const url =
                                  'https://ww5.msu.ac.zw/blog/notice/notice-postponement-of-examinations/';
                              _launchURL(url);
                            },
              ),
      
            ListTile(
                title: Text('23/02/2024', style: TextStyle(fontStyle: FontStyle.italic, color : Colors.grey)),
                hoverColor: Colors.grey,
                onTap: () {
                              _launchURL(String url) async {
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              }

                              const url =
                                  'https://ww5.msu.ac.zw/blog/notice/notice-postponement-of-examinations/';
                              _launchURL(url);
                            },
              ),
          ]
          ),
            ),),
           
            SizedBox(
              height: 20.0,
            ),
            
          ],
        )
       
 ,       ),

  );
 } 
}