import 'package:finalprojectnew/Login/Register_2.dart';
import 'package:finalprojectnew/Login/loginform.dart';
import 'package:flutter/material.dart';

class Mydialog {
  Future<void> nomalDialog(BuildContext context, String message) async {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: Text(message),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
                onPressed: () => Navigator.pop(context), child: Text('OK')),
          )
        ],
      ),
    );
  }

  Future<void> nextlDialog(BuildContext context, String message) async {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: Text(message),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
                child: Text('OK')),
          )
        ],
      ),
    );
  }

  Future<void> loginlDialog(BuildContext context, String message) async {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: Text(message),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text('OK')),
          )
        ],
      ),
    );
  }

  Future<void> criterion_poin(BuildContext context, String message) async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'))
        ],
        title: Text('เกณฑ์การให้คะแนน'),
        contentPadding: EdgeInsets.all(20.0),
        content: Text(
            '1 สำคัญเท่ากัน \n 2 สำคัญกว่าปานกลาง \n 3 สำคัญกว่ามาก \n 4 สำคัญกว่ามาก \n 5 สำคัญมากกว่าสูงสุด'),
      ),
    );
  }
}
