import 'package:flutter/material.dart';
import 'report.dart';
import 'report_anonymously.dart';

class ReportOptionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple, // Set background color to purple
                  foregroundColor: Colors.white, // Set text color to white
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Report(),
                    ),
                  );
                },
                child: Text('Report Abuse'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple, // Set background color to purple
                  foregroundColor: Colors.white, // Set text color to white
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReportAnonymously(),
                    ),
                  );
                },
                child: Text('Anonymous Report'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
