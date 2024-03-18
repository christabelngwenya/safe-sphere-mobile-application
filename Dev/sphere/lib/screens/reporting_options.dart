import 'package:flutter/material.dart';
import 'report.dart';
import 'report_anonymously.dart';

class ReportOptionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
        'Report Options',
        style: TextStyle(color: Colors.white),
      ),
        backgroundColor: Color(0xFF6B3A6B), // Set the background color to rgb(107, 58, 107)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>Report(),
                  ),
                );
              },
              child: Text('Report Using Your Credentials'),
            ),


            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>ReportAnonymously(),
                  ),
                );
              },
              child: Text('Report Anonymously'),
            ),
          ],
        ),
      ),
    );
  }
}