import 'package:flutter/material.dart';
import 'package:flutter_first/icecream/icecream_view.dart';
// import 'package:flutter_first/views/calculator/calculator_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: IcecreamView(),
      ),
    );
  }
}
