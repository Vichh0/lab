import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lab/pages/Home.dart';


class Access extends StatelessWidget {
  const Access({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('LIRCAYHUB APP'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                labelText: 'user *',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.add),
                labelText: 'password *',
              ),
            ),
            ElevatedButton(
              onPressed: () {
               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()));
            },
             child: const Text('Acceder'),
             ),
          ],
        )
      ),
    );
  }
}