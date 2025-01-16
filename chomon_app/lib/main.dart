import 'package:flutter/material.dart';
import 'package:chomon_app/screens/home_screen.dart';
import 'package:chomon_app/screens/listview_screen.dart';
import 'package:chomon_app/screens/courses_screen.dart';
import 'package:chomon_app/screens/calendar_screen.dart';
import 'package:chomon_app/screens/contacts_screen.dart';
import 'package:chomon_app/screens/pmdm_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'home',
      debugShowCheckedModeBanner: false,
      routes: {
        'home': ( BuildContext context) => HomeScreen(),
        'calendar': ( BuildContext context) => CalendarScreen(),
        'listView1': ( BuildContext context) => ListViewScreen(),
        'courses': ( BuildContext context) => Courses(),
        'contacts': ( BuildContext context) => ContactsScreen(),
        'pmdm': ( BuildContext context) => PmdmScreen(),      
      }
    );
  }
}