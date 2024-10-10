import 'package:cinema_ticket_booking_app/utils/const.dart';
import 'package:cinema_ticket_booking_app/view/mainscreen/cinema_main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MovieTix',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          scaffoldBackgroundColor: appBackgroundColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: appBackgroundColor,
          )),
      home: const CinemaMainScreen(),
    );
  }
}
