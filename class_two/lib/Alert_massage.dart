import 'package:flutter/material.dart';

class AlertMassage extends StatelessWidget {
  AlertMassage({super.key});

  @override
  Widget build(BuildContext context) {
    void showAlertDialog() {
      showDialog(
        context: context,
        builder: (BuildContext coontext) {
          return AlertDialog(
            backgroundColor: Colors.lime.shade100,
            actionsAlignment: MainAxisAlignment.center,
            title: Text(
              'Alert Massage',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black45,
              ),
            ),

            content: Text(
              "Please click OK to continue",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black45,
              ),
            ),
            actions: [
              Center(
                child: SizedBox(
                  width: 360,
                  height: 40,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.red.shade200,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'OK',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      );
    }

    void showSimpleDialog() {
      showDialog(
        context: context,
        builder: (context) => SimpleDialog(
          title: Text('Simple Dialog'),
          children: [
            SimpleDialogOption(child: Text('English')),
            SimpleDialogOption(child: Text('Bangla')),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Enter your age..?'),
                  TextField(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Cancel'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Save'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    void showSnackBar() {
      final snackBar = SnackBar(
        content: Text('This is a SnackBar message!'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            // Some code to undo the change.
          },
        ),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    void showBottomSheet() {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 200,
            color: Colors.amber.shade100,
            child: Center(
              child: Text(
                'This is a Bottom Sheet',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black45,
                ),
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text('Alert Massage Example')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 360,
            height: 60,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.amber.shade200,
                ),
              ),
              onPressed: () {
                showAlertDialog();
              },
              child: Text(
                'Alert',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 60,
            width: 360,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.red.shade200),
              ),
              onPressed: () {
                showSnackBar();
              },
              child: Text(
                'Snackbar',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 60,
            width: 360,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.red.shade200),
              ),
              onPressed: () {
                showSimpleDialog();
              },
              child: Text(
                'Simple Dialog',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 60,
            width: 360,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.red.shade200),
              ),
              onPressed: () {
                showBottomSheet();
              },
              child: Text(
                'Show Bottom Sheet',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Back to Home Page');
          Navigator.of(context).pop();
        },
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.amberAccent,
      ),
    );
  }
}
