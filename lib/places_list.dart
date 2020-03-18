
import 'package:flutter/material.dart';

class PlacesListScreen extends StatefulWidget{

  @override
  State createState() {

  }
}

class PlacesListScreenState extends State<PlacesListScreen>{

  void _loadPlaces(){

  }

  @override
  void initState() {
    _loadPlaces()
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Places"),
      ),
    );
  }
}