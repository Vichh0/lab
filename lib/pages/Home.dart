import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lab/Data/Videojuegos.dart';
import 'package:lab/pages/Games.dart';
import 'package:lab/pages/User.dart';
import 'package:lab/pages/Routine.dart';

class Home extends StatelessWidget {
  Home({super.key});
  
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 15));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('HOME'),
      ),
      persistentFooterButtons: [
        ElevatedButton(
          style: style,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const UserRoute()));
            } ,
          child: const Text('Info usuario'),
          ),
          ElevatedButton(
            style: style,
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RutineRoute()));
            } ,
            child: const Text('Rutinas'),
          ),
          ElevatedButton(
            style: style,
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GameRoute()));
            } ,
            child: const Text('Juegos'),
          ),
      ],
      body: Center(
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('Usuario: *******'),
          ],
        ),
        ),
      ),
    );
  }
}