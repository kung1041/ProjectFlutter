import 'package:flutter/material.dart';

class sizepill extends StatefulWidget {
  @override
  _sizepillState createState() => _sizepillState();
}

class _sizepillState extends State<sizepill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text('ขนาด'),
      ),
      body: SingleChildScrollView(
        //ใช้ SingleChildScrollView ช่วยให้ไม่ bottom overflowed by pixels flutter
        child: Column(
          children: <Widget>[
            Card(
              child: ListTile(
                title: Text('g'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('IU'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('meg'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('mcg/hr'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('mcg/ml'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('mEq'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('mg'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('mg/cm2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('mg/g'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('mg/ml'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('mL'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('%'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
