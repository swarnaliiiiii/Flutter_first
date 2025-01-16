import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IcecreamView extends StatelessWidget {


  Future<Map<String,dynamic>> loadIcecream() async {
    final icecream = await rootBundle.loadString("assets/icecream.json");
    await Future.delayed(const Duration(seconds: 1));
    final decodedIcecream = jsonDecode(icecream);
    return decodedIcecream;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Icecream",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            "We have something yummy for everyone",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Expanded(child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              FutureBuilder(future: loadIcecream(), builder: (context, snapshot){
                if(snapshot.connectionState == ConnectionState.done) {
                  final icecream = snapshot.data as Map<String,dynamic>;
                  return Text(icecream["icecreams"][0]["flavor"]);
                } else {
                  return const Center(child: CircularProgressIndicator.adaptive());
                }
              })  
            ],),
          ))
        ],
      ),
    );
  }
}