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
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Bienvenido a la página principal',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GameRoute())
                    );
                },
                child: Text('Ir a Juegos'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RutineRoute()),
                  );
                },
                child: Text('Ir a Rutinas'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserRoute()),
                  );
                },
                child: Text('Ir a Usuario'),
              ),
            ],
          ),
        ),
    );
  }
}