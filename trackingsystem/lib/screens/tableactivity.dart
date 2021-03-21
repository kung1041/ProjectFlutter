import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trackingsystem/screens/addpillsuccessful.dart';

class tableactivity extends StatefulWidget {
  @override
  _tableactivityState createState() => _tableactivityState();
}

class _tableactivityState extends State<tableactivity> {
  var value = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ตาราง'),
        actions: <Widget>[
          FlatButton(
            textColor: Colors.white,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => addpillsuccessful()));
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
              child: Card(
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('ความถี่'),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blue,
                        ),
                        onPressed: () {
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
                                          'ความถี่',
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
                                    child: CupertinoPicker(
                                      itemExtent: 50,
                                      backgroundColor: Colors.white,
                                      onSelectedItemChanged: (int i) {
                                        print(i);
                                        setState(() {});
                                      },
                                      children: <Widget>[
                                        Text('As needed'),
                                        Text('Every Day'),
                                        Text('Spectific Day'),
                                        Text('Day Interval'),
                                      ],
                                      /* the rest of the picker */
                                    ),
                                  )
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: Text(
                  'กี่ครั้งต่อวัน?',
                ),
              ),
            ),
            Center(
              child: Card(
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('1 ครั้งต่อวัน'),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blue,
                        ),
                        onPressed: () {
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
                                          'กี่ครั้งต่อวัน',
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
                                    child: CupertinoPicker(
                                      itemExtent: 50,
                                      backgroundColor: Colors.white,
                                      onSelectedItemChanged: (int i) {
                                        print(i);
                                        setState(() {});
                                      },
                                      children: <Widget>[
                                        Text('1       ครั้งต่อวัน'),
                                        Text('2       ครั้งต่อวัน'),
                                        Text('3       ครั้งต่อวัน'),
                                        Text('4       ครั้งต่อวัน'),
                                        Text('5       ครั้งต่อวัน'),
                                        Text('6       ครั้งต่อวัน'),
                                      ],
                                      /* the rest of the picker */
                                    ),
                                  )
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: Text(
                  'ตั้งเวลาและโดส',
                ),
              ),
            ),
            Center(
              child: Card(
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('8.00\n1 เม็ด'),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blue,
                        ),
                        onPressed: () {
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
                                          'แก้ไข',
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
                                    child: CupertinoTimerPicker(
                                      mode: CupertinoTimerPickerMode.hm,
                                      onTimerDurationChanged: (value) {
                                        setState(() {
                                          this.value = value.toString();
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    height: 320.0,
                                    color: Color(0xfff7f7f7),
                                    child: CupertinoPicker(
                                      itemExtent: 50,
                                      backgroundColor: Colors.white,
                                      onSelectedItemChanged: (int i) {
                                        print(i);
                                        setState(() {});
                                      },
                                      children: <Widget>[
                                        Text('1 เม็ด'),
                                        Text('2 เม็ด'),
                                        Text('3 เม็ด'),
                                        Text('4 เม็ด'),
                                        Text('5 เม็ด'),
                                        Text('6 เม็ด'),
                                      ],
                                      /* the rest of the picker */
                                    ),
                                  )
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: Text(
                  'เริ่ม',
                ),
              ),
            ),
            Center(
              child: Card(
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('March 20 2021'),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blue,
                        ),
                        onPressed: () {
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
                                          'วันที่เริ่ม',
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
                                      mode: CupertinoDatePickerMode.date,
                                      onDateTimeChanged: (DateTime value) {},
                                    ),
                                  )
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: Text(
                  'สิ้นสุด',
                ),
              ),
            ),
            Center(
              child: Card(
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('March 20 2021'),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blue,
                        ),
                        onPressed: () {
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
                                          'วันที่สิ้นสุด',
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
                                      mode: CupertinoDatePickerMode.date,
                                      onDateTimeChanged: (DateTime value) {},
                                    ),
                                  )
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
