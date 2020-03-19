
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'common/constans.dart';

class PlacesListScreen extends StatefulWidget{

  @override
  _PlacesListScreenState createState() => _PlacesListScreenState();

}

class _PlacesListScreenState extends State<PlacesListScreen>{

  SharedPreferences _pref;
  Future<void> _checkDefaultPlace() async{
    _pref = await SharedPreferences.getInstance();
    int _defaultPlaceId = _pref.getInt(Constans.DEFAULT_PLACE_ID);

    if(_defaultPlaceId == null)
      _loadPlaces();
        else
  }
  
  void _loadPlaces(){

  }

  void _showPlace(int id){

  }

  @override
  void initState() {
    _checkDefaultPlace();
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