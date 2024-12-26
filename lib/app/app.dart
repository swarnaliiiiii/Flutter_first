import 'package:flutter/material.dart';
import 'package:flutter_first/views/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter first app",
      home: HomeView(),
    );
  }
}
