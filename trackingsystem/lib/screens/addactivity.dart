import 'package:flutter/material.dart';
import 'package:trackingsystem/screens/addactivitysuccessful.dart';
import 'package:flutter/cupertino.dart';

class addactivity extends StatefulWidget {
  @override
  _addactivityState createState() => _addactivityState();
}

class _addactivityState extends State<addactivity> {
  DateTime dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('เพิ่มกิจกรรม'),
        actions: <Widget>[
          FlatButton(
            textColor: Colors.white,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => addactivitysuccessful()));
            },
            child: Text("ถัดไป"),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Flexible(
                child: new TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 40.0, horizontal: 20.0),
                    hintText: 'กิจกรรม.....',
                  ),
                  style: new TextStyle(
                      fontSize: 30, height: 2.0, color: Colors.black),
                ),
              ),
            ),
            Center(
              child: Card(
                margin:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                elevation: 10,
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('เวลา'),
                      Text('Today 3:37 PM'),
                    ],
                  ),
                  onTap: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (context) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color(0xff999999),
                                    width: 0.0,
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  CupertinoButton(
                                    child: Text(
                                      'ยกเลิก',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0,
                                      vertical: 5.0,
                                    ),
                                  ),
                                  Text(
                                    'วันที่และเวลา',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  CupertinoButton(
                                    child: Text(
                                      'เสร็จ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0,
                                      vertical: 5.0,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 320.0,
                              color: Color(0xfff7f7f7),
                              child: CupertinoDatePicker(
                                mode: CupertinoDatePickerMode.dateAndTime,
                                initialDateTime: dateTime,
                                onDateTimeChanged: (DateTime newDateTime) {
                                  if (mounted) {
                                    print(
                                        "Your Selected Date: ${newDateTime.day}");
                                    setState(() => dateTime = newDateTime);
                                  }
                                },
                              ),
                            )
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
