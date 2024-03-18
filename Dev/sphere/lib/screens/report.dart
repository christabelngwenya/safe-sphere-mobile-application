import 'package:flutter/material.dart';
import 'chat_screen.dart';
import 'nav.dart';
import 'confirm.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Report extends StatefulWidget {
  @override
  _Report createState() => _Report();
}

enum ButtonAction {
  cancel,
  agree,
}

class _Report extends State<Report> {
  void showMaterialDialog<T>({required BuildContext context, required Widget child}) {
    showDialog<T>(
      context: context,
      builder: (BuildContext context) => child,
    );
  }

  @override
  void initState() {
    super.initState();
  }

  final reportController = TextEditingController();
  final emailController = TextEditingController(); // New controller for email
  late String _report;
  late String _email; // Variable to store the email

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Report Your Case',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF6B3A6B), // Set the background color to rgb(107, 58, 107)
      ),
      body: Container(
        margin: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 40.0,
            ),
            TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 5,
              textInputAction: TextInputAction.done,
              cursorColor: Colors.blue,
              controller: reportController,
              onChanged: (value) {
                setState(() {
                  _report = value.trim();
                });
              },
              decoration: InputDecoration(
                hintText: 'Type your report case here...',
                alignLabelWithHint: false,
                filled: true,
                labelText: '',
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
              cursorColor: Colors.blue,
              controller: emailController,
              onChanged: (value) {
                setState(() {
                  _email = value.trim();
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter your email address...',
                alignLabelWithHint: false,
                filled: true,
                labelText: '',
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              child: Text('Send Report'),
              onPressed: () {
                if (_report.isEmpty || _email.isEmpty) {
                  displayToastMessage("Please fill in all fields before submitting.", context);
                  return;
                }

                // Here you can add the logic to submit the report along with the email
                // For example, you could call a function like submitReportWithEmail(_report, _email)

                showMaterialDialog<ButtonAction>(
                  context: context,
                  child: AlertDialog(
                    title: const Text('We are here for you, no need to feel alone we got your back'),
                    content: Text(
                      'Confirm or cancel the process',
                      // style: dialogTextStyle,
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Cancel'),
                        onPressed: () {
                          Navigator.pop(context, ButtonAction.cancel);
                        },
                      ),
                      TextButton(
                        child: const Text('Agree'),
                        onPressed: () {
                          displayToastMessage("Thank you, We will contact you via email for assistance", context);
                          Navigator.pop(context, ButtonAction.agree);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

displayToastMessage(String message, BuildContext context) {
  Fluttertoast.showToast(msg: message);
}
