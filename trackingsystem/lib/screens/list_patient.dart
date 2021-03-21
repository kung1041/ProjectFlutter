import 'package:flutter/material.dart';
import 'package:trackingsystem/screens/historypatient.dart';

class ListPatient extends StatefulWidget {
  @override
  _ListPatientState createState() => _ListPatientState();
}

class _ListPatientState extends State<ListPatient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('รายชื่อคนไข้'),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, int index) {
            return Container(
              child: Card(
                elevation: 5,
                child: ListTile(
                  title: Text("1. นาย ยินดี ไม่มีปัญหา อายุ 42 ปี"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HistoryPatient()));
                  },
                ),
              ),
            );
          }),
    );
  }
}
