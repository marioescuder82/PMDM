import 'package:flutter/material.dart';

import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatelessWidget {
   
  const CalendarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calendario',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: TableCalendar(
          firstDay: DateTime.utc(2024, 10, 1),
          lastDay: DateTime.utc(2025, 6, 30),
          focusedDay: DateTime.now()
        )
      ),
    );
  }
}