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
    return Scaffold(
      persistentFooterButtons: [
        Visibility(
          maintainSize: true, 
          maintainAnimation: true,
          maintainState: true,
          visible: true, 
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const UserRoute()));
            } ,
            child: const Text('Usuario'),
          )
        ),
        Visibility(
          maintainSize: true, 
          maintainAnimation: true,
          maintainState: true,
          visible: true, 
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RutineRoute()));
            } ,
            child: const Text('Rutinas'),
          )
        ),
        Visibility(
          maintainSize: true, 
          maintainAnimation: true,
          maintainState: true,
          visible: true, 
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GameRoute()));
            } ,
            child: const Text('Juegos'),
          )
        )
      ],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('HOME'),

          ],
        ),
      ),
      );
  }
}