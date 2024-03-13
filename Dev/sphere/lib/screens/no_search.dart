import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';






class NoItemSearch extends StatefulWidget {

  static const routeName = '/NoItemSearch';

  @override

  _NoItemSearchState createState() => _NoItemSearchState();

}



class _NoItemSearchState extends State<NoItemSearch> {





  @override

  void initState() {

    super.initState();

  }





  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        iconTheme:IconThemeData(color: Colors.white),

        backgroundColor: Colors.pink[700],

        leading: Icon(Icons.menu),

        title: Text(

            'Safe Sphere',

            style: TextStyle(fontSize:24,color: Colors.white)

        ),

        // actions: <Widget>[

        //   IconButton(

        //     padding: EdgeInsets.all(5.0),

        //     onPressed: (){},

        //     icon: Icon(Icons.search,color: Colors.white),

        //   ),

       

      ),

      body: SingleChildScrollView(

        physics: BouncingScrollPhysics(),

        child: Container(

          width: MediaQuery.of(context).size.width,

          margin: EdgeInsets.only(top: 150),

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[

              Icon(

                  Iconsax.search_favorite,

                  color: Colors.purple,

                size: 100,

              ),

              Text('No result',style: TextStyle(fontSize: 28,color: Colors.purple)),

              Text('Try a more general \n keyword',style: TextStyle(fontSize:18,color: Colors.purple,fontWeight: FontWeight.w400),textAlign: TextAlign.center,),

            ],

          ),

        ),

      ),

    );

  }

}


