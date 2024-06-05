import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserRoute extends StatelessWidget {
  const UserRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Perfil Usuario'),
      ),
      body: Center(
        child: Card(
          child: Column(
             mainAxisSize: MainAxisSize.min,
             children: <Widget>[
              Text('En esta pagina vera su informacion de usuario'),
              const ListTile(
                leading: Icon(Icons.account_circle_sharp),
                title: Text('Nombre Usuario: ********'),
              ),
              const ListTile(
                leading: Icon(Icons.lock_person),
                title: Text('ID Usuario: ********'),
              ),
             ],
          ),
        ),
      ),
    );
  }
}