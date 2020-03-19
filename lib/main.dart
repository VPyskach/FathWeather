import 'dart:math';

import 'package:fathweather/common/constans.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'places_list.dart';

Future<void> main() async{

  SharedPreferences pref = await SharedPreferences.getInstance();
  int defaultPlaceId = pref.getInt(Constans.DEFAULT_PLACE_ID);

  if(defaultPlaceId == -1)
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Color _getRandomPrimaryColor(){
    return Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: _getRandomPrimaryColor(),
      ),
      home: PlacesListScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
