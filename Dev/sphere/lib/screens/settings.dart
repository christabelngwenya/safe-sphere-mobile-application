import 'dart:math';



import 'package:flutter/material.dart';

import 'login_signup.dart';







class SettingsPage2 extends StatelessWidget {

  static const routeName = '/SettingsPage2';
  // bool value;

  // @override
  // void initState(){
  // 	super.initState();
  // 	value=true;
  // }





  @override

  Widget build(BuildContext context) {





    /// ----------------------------------------------------------

    /// Build main content with help of Scaffold widget

    /// ----------------------------------------------------------

    return Scaffold(

      backgroundColor: Colors.pink[700],

      body: Theme(

        data: Theme.of(context).copyWith(

          brightness: Brightness.dark,

          primaryColor: Colors.purple,

        ),

        child: DefaultTextStyle(

          style: TextStyle(

            color: Colors.white,

          ),



          /// ----------------------------------------------------------

          /// Build  scrollable  content with help of SingleChildScrollView widget

          /// ----------------------------------------------------------

          child: SingleChildScrollView(

            padding: const EdgeInsets.all(32.0),

            child: Column(

              children: <Widget>[

                const SizedBox(height: 30.0),

                Row(

                  children: <Widget>[

                    Container(

                      width: 75,

                      height: 75,

                      decoration: BoxDecoration(

                        color: Colors.white,

                        shape: BoxShape.circle,

                        image: DecorationImage(

                          image: NetworkImage(

                           'https://better.net/wp-content/uploads/2019/08/heart-health-770x433.jpg'),

                          fit: BoxFit.fill,

                        ),

                        border: Border.all(

                          color: Colors.white,

                          width: 2.0,

                        ),

                      ),

                    ),

                    const SizedBox(width: 10.0),

                    Expanded(

                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: <Widget>[

                          Text(

                            "Caroline Munjoma",

                            style: TextStyle(

                              fontWeight: FontWeight.bold,

                              fontSize: 20.0,

                            ),

                          ),



                        ],

                      ),

                    ),

                  ],

                ),

                const SizedBox(height: 10.0),

                Divider(thickness: 2,),

                const SizedBox(height: 10.0),

                ListTile(

                  leading: Icon(

                    Icons.email,

                    color: Colors.white,

                  ),

                  title: Text(

                    "E-Mail",

                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),

                  ),

                  subtitle: Text(

                    "r1910753@students.msu.ac.zw",

                    style: TextStyle(

                      color: Colors.grey.shade400,

                    ),

                  ),

                  trailing: Icon(

                    Icons.keyboard_arrow_right,

                    color: Colors.grey.shade400,

                  ),

                  onTap: () {},

                ),

                ListTile(

                  leading: Icon(

                    Icons.language,

                    color: Colors.white,

                  ),

                  title: Text(

                    "Languages",

                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),

                  ),

                  subtitle: Text(

                    "English",

                    style: TextStyle(

                      color: Colors.grey.shade400,

                    ),

                  ),

                  trailing: Icon(

                    Icons.keyboard_arrow_right,

                    color: Colors.grey.shade400,

                  ),

                  onTap: () {},

                ),



                SwitchListTile(



                  title: Text(

                    "University Notifications",

                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),

                  ),

                  subtitle: Text(

                    "On",

                    style: TextStyle(

                      color: Colors.grey.shade400,

                    ),

                  ),

                  value: true,

                  onChanged: (val) {
                  	// setState((){value = !value;});
                  	},

                ),

                SwitchListTile(

                  title: Text(

                    "App Notifications",

                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),

                  ),

                  subtitle: Text(

                    "Off",

                    style: TextStyle(

                      color: Colors.grey.shade400,

                    ),

                  ),

                  value: false,

                  onChanged: (val) {},

                ),

                ListTile(



                  trailing: Icon(

                    Icons.exit_to_app,

                    color: Colors.white,

                  ),

                  onTap: () {Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginSignup()));},

                ),

              ],

            ),

          ),

        ),

      ),

    );

  }

}


