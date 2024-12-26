import 'package:flutter/material.dart';
import 'package:flutter_first/views/calculator_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        bottom: false,
        child: const CalculatorView(),
      ),
    );
  }
}
