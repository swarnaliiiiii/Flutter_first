import 'package:flutter/material.dart';

class IcecreamView extends StatefulWidget {
  const IcecreamView({super.key});

  @override
  State<IcecreamView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<IcecreamView> {
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
        ],
      ),
    );
  }
}
