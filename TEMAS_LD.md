```
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.indigo,
          titleTextStyle: TextStyle(
            color: Colors.white
          )
        )
      ),
      darkTheme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.amber,
          titleTextStyle: TextStyle(
            color: Colors.black
          )
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
```