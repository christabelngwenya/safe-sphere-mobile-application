import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';

class PanicButtonPage extends StatefulWidget {
  @override
  _PanicButtonPageState createState() => _PanicButtonPageState();
}

class _PanicButtonPageState extends State<PanicButtonPage> {
  final securityEmailAddress = 'christabelprogrammer@gmail.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Panic Button',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF6B3A6B), // Set the background color to rgb(107, 58, 107)

      ),
      body: Center(
        child: Text(
          'Press the Panic Button to send an emergency email if you in any form of danger',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60.0,
          child: OutlinedButton(
            child: Text(
              'Panic Button',
              style: TextStyle(fontSize: 18.0),
            ),
            onPressed: () {
              _sendEmergencyMessage();
              _pinpointLocation();
            },
          ),
        ),
      ),
    );
  }

  void _sendEmergencyMessage() async {
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: securityEmailAddress,
      queryParameters: {
        'subject': 'Emergency: A student  is in danger!',
        'body': 'Location - Latitude: ${position.latitude}, Longitude: ${position.longitude}',
      },
    );

    try {
      await launch(emailLaunchUri.toString());
      print('Emergency email sent successfully!');
    } catch (error) {
      print('Failed to send emergency email, however you may use the panic button inside your room as another option: $error');
    }
  }

  void _pinpointLocation() async {
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    print('Current Location - Latitude: ${position.latitude}, Longitude: ${position.longitude}');
  }
}