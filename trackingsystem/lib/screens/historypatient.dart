import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:trackingsystem/screens/editactivity.dart';
import 'package:trackingsystem/utillty/normal_dialog.dart';
import 'package:ant_icons/ant_icons.dart';

class HistoryPatient extends StatefulWidget {
  @override
  _HistoryPatientState createState() => _HistoryPatientState();
}

class _HistoryPatientState extends State<HistoryPatient> {
  CalendarController _controller;
  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    var tableCalendar = TableCalendar(
      initialCalendarFormat: CalendarFormat.week,
      calendarStyle: CalendarStyle(
          todayColor: Colors.orange,
          selectedColor: Theme.of(context).primaryColor,
          todayStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              color: Colors.white)),
      headerStyle: HeaderStyle(
        centerHeaderTitle: true,
        formatButtonDecoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20.0),
        ),
        formatButtonTextStyle: TextStyle(color: Colors.white),
        formatButtonShowsNext: false,
      ),
      startingDayOfWeek: StartingDayOfWeek.sunday,
      builders: CalendarBuilders(
        selectedDayBuilder: (context, date, events) => Container(
            margin: const EdgeInsets.all(4.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20.0)),
            child: Text(
              date.day.toString(),
              style: TextStyle(color: Colors.white),
            )),
        todayDayBuilder: (context, date, events) => Container(
            margin: const EdgeInsets.all(4.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20.0)),
            child: Text(
              date.day.toString(),
              style: TextStyle(color: Colors.white),
            )),
      ),
      calendarController: _controller,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('นาย ยินดี ไม่มีปัญหา อายุ 42 ปี'),
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                addpillandacticity(context, 'ต้องการทำรายการอะไร?');
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            tableCalendar,
            Center(
              //center สำคัญมากถ้าไม่มีจะไม่ขึ้น listview กับ calendar เลย
              child: SizedBox(
                child: new ListView.builder(
                    shrinkWrap: true, //ถ้าไม่มีมันมีผลทำให้ ไม่ขึ้น listtile
                    itemCount: 3,
                    itemBuilder: (context, int index) {
                      return Container(
                        child: Card(
                          elevation: 5,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 10),
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('8.00 กินยาพารา 2เม็ด'),
                                IconButton(
                                    icon: Icon(
                                      AntIcons.check_circle,
                                      color: Colors.indigo[900],
                                    ),
                                    onPressed: () {
                                      normalDialog(context, 'นินๆ');
                                    }),
                                IconButton(
                                    icon: Icon(
                                      AntIcons.delete,
                                      color: Colors.indigo[900],
                                    ),
                                    onPressed: null),
                                IconButton(
                                    icon: Icon(
                                      AntIcons.edit,
                                      color: Colors.indigo[900],
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  editactivity()));
                                    })
                              ],
                            ),
                            onTap: () {
                              normalDialog(context,
                                  'ยาพาราเซตตามอล\n ความถี่ทุกวัน\nกี่ครั้งต่อวัน:1\nวันที่เริ่ม:\nวันสิ้นสุด:');
                            },
                          ),
                        ),
                      );
                    }),
              ),
            )
            // Expanded(
            //     child: ListTile(
            //   title: Text('dfwefw'),
            // ))
          ],
        ),
      ),
    );
  }
}
