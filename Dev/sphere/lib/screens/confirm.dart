import 'package:flutter/material.dart';

class SampleDialog extends StatefulWidget {
  static const routeName = '/SampleDialog';

  @override
  _SampleDialogState createState() => _SampleDialogState();
}

enum ButtonAction { cancel, agree }

class _SampleDialogState extends State<SampleDialog> {
  void showMaterialDialog<T>({required BuildContext context, required Widget child}) {
    showDialog<T>(
      context: context,
      builder: (BuildContext context) => child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 20),
            child: OutlinedButton(
              child: Text("Alert"),
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                elevation: 5,
                side: BorderSide(color: Colors.black),
              ),
              onPressed: () {
                showMaterialDialog<ButtonAction>(
                  context: context,
                  child: AlertDialog(
                    title: const Text('Are you sure you want to delete the item?'),
                    content: Text(
                      'Confirm or cancel the deletion process',
                      // style: dialogTextStyle,
                    ),
                    actions: <Widget>[
                      ElevatedButton(
                        child: const Text('Cancel'),
                        onPressed: () {
                          Navigator.pop(context, ButtonAction.cancel);
                        },
                      ),
                      ElevatedButton(
                        child: const Text('Agree'),
                        onPressed: () {
                          Navigator.pop(context, ButtonAction.agree);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
