import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IcecreamView extends StatefulWidget {
  const IcecreamView({super.key});

  @override
  State<IcecreamView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<IcecreamView> {
  Map<String, dynamic>? dicodedicecream;
  @override
  void initState() {
    super.initState();
    loadIcecream();
  }

  Future<void> loadIcecream() async {
    final icecream = await rootBundle.loadString("assets/icecream.json");
    final dicodedicecream = jsonDecode(icecream);
    await Future.delayed(const Duration(seconds: 1));
    print(dicodedicecream);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Icecream",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          Text(
            "We have something yummy for everyone",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          if (dicodedicecream != null)
            const Text("Icecreams Loaded")
          else
            Center(child: const CircularProgressIndicator.adaptive())
        ],
      ),
    );
  }
}
