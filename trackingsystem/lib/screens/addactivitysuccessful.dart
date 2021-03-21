import 'package:flutter/material.dart';

class addactivitysuccessful extends StatefulWidget {
  @override
  _addactivitysuccessfulState createState() => _addactivitysuccessfulState();
}

class _addactivitysuccessfulState extends State<addactivitysuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('บันทึกข้อมูลเสร็จเรียบร้อย'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Container(
                // Container เป็นการกำหนดขนาดของรูปภาพได้ด้วย
                width: 120,
                height: 120.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/checkcorrect.png'),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text('Thankyou'),
            )
            // Text(
            //   'บันทึกกิจกรรมผู้ป่วย',
            //   textAlign: TextAlign.center,
            // ),
          ],
        ),
      ),
    );
  }
}
