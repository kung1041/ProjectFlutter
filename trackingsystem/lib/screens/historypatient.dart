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
        title: Text('????????? ??????????????? ?????????????????????????????? ???????????? 42 ??????'),
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                addpillandacticity(context, '??????????????????????????????????????????????????????????');
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            tableCalendar,
            Center(
              //center ??????????????????????????????????????????????????????????????????????????? listview ????????? calendar ?????????
              child: SizedBox(
                child: new ListView.builder(
                    shrinkWrap: true, //???????????????????????????????????????????????????????????? ????????????????????? listtile
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
                                Text('8.00 ??????????????????????????? 2????????????'),
                                IconButton(
                                    icon: Icon(
                                      AntIcons.check_circle,
                                      color: Colors.indigo[900],
                                    ),
                                    onPressed: () {
                                      normalDialog(context, '????????????');
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
                                  '??????????????????????????????????????????\n ???????????????????????????????????????\n??????????????????????????????????????????:1\n?????????????????????????????????:\n??????????????????????????????:');
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
