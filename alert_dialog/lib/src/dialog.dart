import 'package:flutter/material.dart';

class MyDialog extends StatefulWidget {
  @override
  _MyDialogState createState() => _MyDialogState();
}

enum DialogAction{
  yes,
  no
}

class _MyDialogState extends State<MyDialog> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                hintText: 'Enter some text',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Dialog'),
                      content: Text(_textEditingController.text),
                      actions: [
                        ElevatedButton(
                          onPressed: () => alertResult(DialogAction.yes), 
                          child: Text("Yes")
                        ),
                        ElevatedButton(
                          onPressed: () => alertResult(DialogAction.no), 
                          child: Text("No")
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Open Dialog'),
            ),
          ],
        ),
      ),
    );
  }

  alertResult(DialogAction action) {
    print('You selected $action');
  }
}

