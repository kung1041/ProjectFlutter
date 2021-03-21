import 'package:flutter/material.dart';
import 'package:trackingsystem/screens/addactivity.dart';
import 'package:trackingsystem/screens/addpill.dart';

Future<void> normalDialog(BuildContext context, String message) async {
  showDialog(
      context: context,
      builder: (context) => SimpleDialog(
            title: Text(message),
            children: <Widget>[
              FlatButton(
                  onPressed: () => Navigator.pop(context),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'OK',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ))
            ],
          ));
}

Future<void> addpillandacticity(BuildContext context, String message) async {
  showDialog(
      context: context,
      builder: (context) => SimpleDialog(
            backgroundColor: Colors.blue,
            title: Text(message),
            children: <Widget>[
              Card(
                elevation: 15,
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                child: ListTile(
                  title: Text('เพิ่มยารักษาโรค'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => addpill()));
                  },
                ),
              ),
              Card(
                elevation: 15,
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                child: ListTile(
                  title: Text('เพิ่มกิจกรรม'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => addactivity()));
                  },
                ),
              ),
              Container(
                child: RaisedButton(
                  color: Colors.red,
                  child: Text('ยกเลิก'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ));
}
// Future<void> addpillandacticity(BuildContext context, String message) async {
//   showDialog(
//       context: context,
//       builder: (context) => SimpleDialog(
//             title: Text(message),
//             children: <Widget>[
//               FlatButton(
//                   onPressed: () => Navigator.pop(context),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: <Widget>[],
//                   ))
//             ],
//           ));
// }
