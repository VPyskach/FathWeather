final String tablePlaces = 'places';
final String columnId  = '_id';
final String columnName  = '_name';
final String columnLat  = '_lat';
final String columnLng  = '_lng';


class Place{
  int id;
  String name;
  double lat;
  double lng;

  Place(this.name, this.lat, this.lng);

  Place.fromMap(Map<String, dynamic> map){
    id = map[columnId];
    name = map[columnName];
    lat = map[columnLat];
    lng = map[columnLng];
  }

  Map<String, dynamic> toMap(){
    var map = <String, dynamic>{
      columnName: name,
      columnLat: lat,
      columnLng: lng
    };
    if(id != null)
      map[columnId] = id;

    return map;
  }
}

class DatabaseHelper{
  static final _databaseName = "FWDatabase.db";
  static final _databaseVersion = 1;

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database _database;

  Future<Database> get database async{

  }
}