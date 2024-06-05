import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GameRoute extends StatelessWidget{
  const GameRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Juegos'),
      ),
      body: Center(
        child: Card(
          child: Column(
            children: <Widget>[
              Text('En esta pagina podra añadir y borrar sus juegos'),
              Text('tambien podra acceder a la informacion precisa de cada juego'),
              const ListTile(
                leading: Icon(Icons.gamepad),
                title: Text('Monster Hunter World'),
                subtitle: Text('524 horas jugadas'),
              ),
              const ListTile(
                leading: Icon(Icons.gamepad),
                title: Text('Fallout NewVegas'),
                subtitle: Text('150 horas jugadas'),
              ),
              const ListTile(
                leading: Icon(Icons.gamepad),
                title: Text('Leage of Legends'),
                subtitle: Text('400 horas jugadas'),
              ),
              ElevatedButton(
                onPressed: () {
                  //Navigator.pop(context);
                  },
                  child: const Icon(Icons.add),
              ),ElevatedButton(
                onPressed: () {
                  //Navigator.pop(context);
                  },
                  child: const Icon(Icons.remove),
              ),
            ],
            ),
        ),
      )
    );
  }
}