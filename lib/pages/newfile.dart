import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String assetName = 'assets/Icons/9035711_finger_print_sharp_icon.svg';
const String failIcon = 'assets/Icons/9035909_trending_down_sharp_icon.svg';
const String winIcon = 'assets/Icons/9035995_trending_up_sharp_icon.svg';
const String skullIcon = 'assets/Icons/9035903_skull_sharp_icon.svg';
const String starIcon = 'assets\Icons\9035891_star_half_sharp_icon.svg';

Widget svg = SvgPicture.asset(
  assetName,
  height: 50, width: 50
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Cyborg',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Laboratorio 5 '),
    );
  }
}

class UserRoute extends StatelessWidget {
  const UserRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil Usuario'),
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

class GameRoute extends StatelessWidget {
  const GameRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle Juego'),
      ),
      body: Column(
          children: [
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text('Item 1'),
                  ),
                  ListTile(
                    leading: Icon(Icons.photo_album),
                    title: Text('Item 2'),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Item 3'),
                  ),
                ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Volver'),
            ),
              ],
          ),],
        )
    );
  }
}

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String text = '';

  void _incrementCounter() {
    setState(() {
      _counter++;
      _comprobar();
    });
  }
  void _decreaceCounter() {
    setState(() {
      _counter--;
      _comprobar();
    });
  }
  void _resetCounter() {
    setState(() {
      _counter=0;
      _comprobar();
    });
  }

  void _comprobar(){
    if(_counter == 15){
      text = 'Victoria';
      svg = SvgPicture.asset(winIcon, height: 50, width: 50,);
    }else if(_counter == 10){
      text = 'Derrota';
      svg = SvgPicture.asset(failIcon, height: 50, width: 50,);
    }else if(_counter < 10){
      text = '';
      svg = SvgPicture.asset(skullIcon, height: 50, width: 50,);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
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
            child: const Text('Ver Usuario'),
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
            },
            child: const Text(' Ver detalle Juego'),
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
            },
            child: const Text(' Ver Rutina'),
          )
        )
        ],
      body: Center(
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                svg,
              ]
            ),
            Text(
                ' Has apretado $_counter veces',
                style: const TextStyle(fontSize: 15),
              ),
               Text(
                text,
                style: const TextStyle(fontSize: 30),
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.end,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  TextButton(onPressed: _incrementCounter, child: Icon(Icons.add)),
                  TextButton(onPressed: _resetCounter, child: Icon(Icons.restart_alt)),
                  TextButton(onPressed: _decreaceCounter, child: Icon(Icons.remove))
                ]
              ),
          ],
        ),
      ),
      ),
      
    );
  }
}
