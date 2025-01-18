import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_1/provider/disks_provider.dart';
import 'package:prueba_1/screens/screens.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
    
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ( _ ) => DisksProvider(), lazy: false)
      ],
      child: MyApp()
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Discos',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomeScreen(),
        'details': (BuildContext context) => DetailsScreen()
      },
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.indigo
        )
      )
    );
  }
}