import 'package:flutter/material.dart';
import 'package:appapi/Quito.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contexto Covid Ecuador'),
      ),
      body:Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
        const Text("CVD19 Ecuador \nLa mayoría de las personas que padecen COVID‑19 sufren síntomas de intensidad leve a moderada y se recuperan sin necesidad de tratamientos especiales. Sin embargo, algunas personas desarrollan casos graves y necesitan atención médica.",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        Container(
          padding: const EdgeInsets.all(20.0),
          child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRkIdc6fWpOtkmQID7p7uHsi4HptLmmRV9sQ&usqp=CAU"),
        ),
        Center(
            child: ElevatedButton(
              onPressed: () {
                // Navigate to second route when tapped.
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Quito()),
                );
              },

              child: Row(mainAxisSize: MainAxisSize.max,children: const <Widget>[
                SizedBox(width: 35, height: 35),
                Text("Adelante"),
              ],
              )
            )
        ),
      ],)
    );
  }
}