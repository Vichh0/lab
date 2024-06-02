import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GameRoute extends StatelessWidget{
  const GameRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Juegos'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Volver'),
        ),
      ),
    );
  }
}