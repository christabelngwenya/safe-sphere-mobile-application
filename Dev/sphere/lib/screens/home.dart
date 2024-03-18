import 'package:flutter/material.dart';
import 'nav.dart';
import 'report.dart';
import 'news.dart';
import 'notices.dart';
import 'no_search.dart';
import 'chat_screen.dart';
import 'profile.dart';
import 'counsellors.dart';
import 'settings.dart';
import 'orientation.dart';
import 'vacancies.dart';
import 'reporting_options.dart';
import 'panic_button.dart';
import'report_anonymously.dart';

//import 'package:carousel_slider/carousel_slider.dart';
//import 'package:twilio_flutter/twilio_flutter.dart';

class Home extends StatefulWidget {
  final int pageNumber;
  Home({key, this.pageNumber = 0}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int _selectedTab;

  @override
  void initState() {
    _selectedTab = widget.pageNumber;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var tabs = [
      MyHome(),
      ChatScreen(),
      Profile6(),
      SettingsPage2(),
    ];

    return Scaffold(
      backgroundColor: Color(0xFF6B3A6B), // Set the background color to rgb(107, 58, 107)
      drawer: NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Safe Sphere',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF6B3A6B), // Set the background color to rgb(107, 58, 107)
      ),
      body: tabs[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _selectedTab = index;
          });
        },
        currentIndex: _selectedTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        backgroundColor: Colors.purple[700],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  late String _key;
  late String _name;

  @override
  Widget build(BuildContext context) {
    late String _search;
    final searchController = TextEditingController();

    final textSearch = Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              cursorColor: Colors.purple,
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Search ...',
                hintStyle: TextStyle(color: Colors.white),
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
          flex: 2,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: ElevatedButton(
              child: Text('Search'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NoItemSearch()));
              },
            ),
          ),
          flex: 1,
        ),
      ],
    );

    return SingleChildScrollView(
        child: new ListView(shrinkWrap: true,
            //padding: EdgeInsets.only(left: 5, right: 5),
            children: [
              SizedBox(
                height: 10.0,
              ),
              textSearch,
              SizedBox(
                height: 10.0,
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 0.3,
                      child: Container(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.17,
                        child: Row(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Vacancies()));
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                color: Colors.white,
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.32,
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: <Widget>[
                                        Text(
                                          'V',
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.purple),
                                        ),
                                        Text(
                                          'Vacancy List',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: MediaQuery
                                                  .of(context)
                                                  .size
                                                  .width *
                                                  0.034),

                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 16),
                              color: Colors.white.withOpacity(0.2),
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.16,
                              width: 1,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MediumArticle()));
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                color: Colors.white,
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.32,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'NF',
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.purple),
                                      ),
                                      Text(
                                        'News Feeds',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize:
                                            MediaQuery
                                                .of(context)
                                                .size
                                                .width *
                                                0.034),

                                      )

                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.white.withOpacity(0.2),
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.16,
                              width: 1,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Notices()));
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                color: Colors.white,
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.32,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'N',
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.purple),
                                      ),
                                      Text(
                                        'Notices',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize:
                                            MediaQuery
                                                .of(context)
                                                .size
                                                .width *
                                                0.034),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                  ],
                ),
              ),


              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    // Adjust the padding as needed
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 5, right: 2.5),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 3,
                                    spreadRadius: 2,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: ListTile(
                                title: Text(
                                  'Get Counselling',
                                  style: TextStyle(
                                    color: Colors.purple,
                                  ),
                                ),
                                tileColor: Colors.grey,
                                hoverColor: Colors.grey,
                                onTap: () =>
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Counsellors(),
                                      ),
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 2.5, right: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 3,
                                    spreadRadius: 2,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: ListTile(
                                title: Text(
                                  'Report Abuse',
                                  style: TextStyle(
                                    color: Colors.purple,
                                  ),
                                ),
                                tileColor: Colors.grey,
                                hoverColor: Colors.grey,
                                onTap: () =>
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>ReportOptionsPage(),
                                      ),
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    // Adjust the padding as needed
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 5, right: 2.5),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 3,
                                    spreadRadius: 2,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: ListTile(
                                title: Text(
                                  'Panic Button',
                                  style: TextStyle(
                                    color: Colors.purple,
                                  ),
                                ),
                                tileColor: Colors.grey,
                                hoverColor: Colors.grey,
                                onTap: () =>
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PanicButtonPage(),
                                      ),
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 2.5, right: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 3,
                                    spreadRadius: 2,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: ListTile(
                                title: Text(
                                  'Educate The Girl Child',
                                  style: TextStyle(
                                    color: Colors.purple,
                                  ),
                                ),
                                tileColor: Colors.grey,
                                hoverColor: Colors.grey,
                                onTap: () =>
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => OrientationInfo(),
                                      ),
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ]));


  }
  }


