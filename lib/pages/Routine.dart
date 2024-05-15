import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RutineRoute extends StatelessWidget {
  const RutineRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rutina'),
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