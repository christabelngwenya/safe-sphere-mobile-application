import 'package:flutter/material.dart';
import 'chat_screen.dart';
import 'nav.dart';
import 'confirm.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ReportAnonymously extends StatefulWidget {
  @override
  _ReportAnonymously createState() => _ReportAnonymously();
}

enum ButtonAction {
  cancel,
  agree,
}

class _ReportAnonymously extends State<ReportAnonymously> {
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
  late String _report;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Report Your Case Anonymously',
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
            OutlinedButton(
              child: Text('Send Report'),
              onPressed: () {
                // Generate a unique identifier for the report
                final reportId = UniqueKey().hashCode;

                // Check if the report is not empty
                if (_report.isEmpty) {
                  displayToastMessage("Please enter your report before submitting.", context);
                  return;
                }

                // Submit the report anonymously
                submitReportAnonymously(_report, reportId); // Implement this function to handle the report submission

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
                          displayToastMessage("Thank you, for your anonymous report we will do our best to help", context);
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

// Implement the submitReportAnonymously function to handle the report submission
void submitReportAnonymously(String report, int reportId) {
  // sending report to server with the reportId
  print("Report submitted anonymously with ID: $reportId");
}
