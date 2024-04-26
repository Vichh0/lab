import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String assetName = 'assets/Icons/9035711_finger_print_sharp_icon.svg';
const String assetName2 = 'assets/Icons/9035909_trending_down_sharp_icon.svg';
const String assetName3 = 'assets/Icons/9035995_trending_up_sharp_icon.svg';

final Widget svg = SvgPicture.asset(
  assetName,
  semanticsLabel: 'newIcon'
);
final Widget svg2 = SvgPicture.asset(
  assetName2,
  semanticsLabel: 'failIcon',
);
final Widget svg3 = SvgPicture.asset(
  assetName3,
  semanticsLabel: 'winIcon',
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _SampleCard extends StatelessWidget {
  const _SampleCard({required this.cardName});
  final String cardName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      height: 10,
      child: Center(child: Text(cardName)),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decreaceCounter() {
    setState(() {
      _counter--;
    });
  }
  void _resetCounter() {
    setState(() {
      _counter=0;
    });
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
          visible: false, 
          child: ElevatedButton(
            onPressed: _incrementCounter,
            child: const Icon(Icons.add),
          )
        ),
        Visibility(
          maintainSize: true, 
          maintainAnimation: true,
          maintainState: true,
          visible: false, 
          child: ElevatedButton(
            onPressed: _decreaceCounter,
            child: const Icon(Icons.remove),
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
                svg2,
                svg3,
              ]
            ),
            Text(
                ' Has apretado $_counter veces',
                style: const TextStyle(fontSize: 30),
              ),
          ],
        ),
      ),
      ),
    );
  }
}
