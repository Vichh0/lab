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
          child: Row(
            children: <Widget>[
            ],
          ),
        )
      ),
    );
  }
}