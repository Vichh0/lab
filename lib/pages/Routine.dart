import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RutineRoute extends StatelessWidget {
  const RutineRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Rutina'),
      ),
      body: Center(
        child: Card(
          child: Column(
            children: <Widget>[
              Text('En esta pagina sera capas de agendar rutinas para sus juegos ademas de poner metas para estos mismos'),
              const ListTile(
                leading: Icon(Icons.edit_calendar),
                title: Text('Rutina para: MHW'),
                subtitle: Text('metas alcansadas: 5/10'),
              ),
              const ListTile(
                leading: Icon(Icons.edit_calendar),
                title: Text('Rutina para: FNV'),
                subtitle: Text('metas alcansadas: 1/20'),
              ),
              ElevatedButton(
                onPressed: () {
                  //Navigator.pop(context);
                  },
                  child: const Icon(Icons.add),
              ),
              ElevatedButton(
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