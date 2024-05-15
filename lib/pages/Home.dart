import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lab/Data/Videojuegos.dart';
import 'package:lab/pages/User.dart';
import 'package:lab/pages/Routine.dart';

class Home extends StatelessWidget {
  Home({super.key});
  
  List<Videojuegos> juego = [
    Videojuegos('Fallout New Vegas', 'RPG', 'Descripcion.....'),
    Videojuegos('The Binding of Issac', 'roguelike', 'Descripcion.....'),
    Videojuegos('Leage if Legends', 'MOBA', 'Descripcion.....'),
  ];

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
      ],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('Juegos'),
            ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: juegos.length,
              itemBuilder: (BuildContext context, int index){
                return ListTile(
                  title: TextButton(
                    onPressed: (){
                      if(juegos[index].names == 'Fallout New Vegas'){
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => juego));
                      }
                    },
                    ),
                )
              }
            )
          ],
        ),
      ),
      );
  }
}