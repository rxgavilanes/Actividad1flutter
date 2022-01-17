import 'package:flutter/material.dart';

class Quito extends StatelessWidget {
  const Quito({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contexto Covid Ecuador'),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.end, children:<Widget>[
          const Text('\n\n Situación en Quito', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          Container(
             padding: const EdgeInsets.all(20.0),
             child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRkIdc6fWpOtkmQID7p7uHsi4HptLmmRV9sQ&usqp=CAU",
                 height: 350,
                 width: 350),
          )
        ],
        ),
    );
  }
}
