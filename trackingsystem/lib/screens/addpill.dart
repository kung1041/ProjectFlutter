import 'package:flutter/material.dart';
import 'package:trackingsystem/screens/sizepill.dart';
import 'package:trackingsystem/screens/tableactivity.dart';

class addpill extends StatefulWidget {
  @override
  _addpillState createState() => _addpillState();
}

class _addpillState extends State<addpill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('เพิ่มยารักษาโรค'),
        actions: <Widget>[
          FlatButton(
            textColor: Colors.white,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => tableactivity()));
            },
            child: Text("ถัดไป"),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              child: Text(
                'ข้อมูลยารักษาโรค',
              ),
            ),
          ),
          Flexible(
              child: TextField(
            decoration: InputDecoration(hintText: 'ชื่อยารักษาโรค'),
          )),
          Flexible(
              child: TextField(
            decoration: InputDecoration(hintText: 'จำนวน'),
          )),
          Center(
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('ขนาด'),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => sizepill()));
                    },
                  ),
                ],
              ),
            ),
          ),
          // Flexible(
          //     child: TextField(
          //   decoration: InputDecoration(
          //       hintText: 'ขนาด', icon: new Icon(Icons.arrow_forward_ios)),
          //   onTap: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => sizepill()));
          //   },
          // ))
        ],
      ),
    );
  }
}
// class _addpillState extends State<addpill> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('เพิ่มยารักษาโรค'),
//       ),
//       body: Column(
//         children: <Widget>[
//           Text('ข้อมูลยารักษาโรค'),
//           Flexible(
//               child: TextField(
//             decoration: InputDecoration(hintText: 'ชื่อยารักษาโรค'),
//           )),
//           Flexible(
//               child: TextField(
//             decoration: InputDecoration(hintText: 'จำนวน'),
//           )),
//           Flexible(
//               child: TextField(
//             decoration: InputDecoration(hintText: 'ขนาด'),
//           ))
//         ],
//       ),
//     );
//   }
// }
