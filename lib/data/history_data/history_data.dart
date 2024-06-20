import 'package:crazy_places/classes/points/funny_point.dart';

class HistoryData {
  List<FunnyPoint> favPlaces = [];

  void addFavPoint(FunnyPoint fp) {
    favPlaces.add(fp);
  } 

  void deleteFavPoint(int index) {
    favPlaces.removeAt(index); 
  }
}