import 'package:flutter/material.dart';
import 'package:trackingsystem/screens/list_patient.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('หน้าหลัก'),
      ),
      drawer: Drawer(),
      body: Center(
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                // Container เป็นการกำหนดขนาดของรูปภาพได้ด้วย
                width: 120,
                height: 120.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/activity.png'),
                  ),
                ),
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListPatient()));
                  },
                  child: null,
                ),
              ),
            ),
            Text(
              'บันทึกกิจกรรมผู้ป่วย',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
