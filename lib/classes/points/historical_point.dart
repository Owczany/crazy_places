import 'package:crazy_places/classes/points/location_point.dart';

class HistoricalPoint extends LocationPoint{
  String description;
  String musicPath;

  HistoricalPoint({
    required double lat,
    required double lang,
    required String pathLogo,
    required String name,
    required this.description,
    required this.musicPath,
  }) : super(
    lat: lat,
    lang: lang,
    pathLogo: pathLogo,
    name: name,
  );

  @override
  String toString() {
    return 'HistoricalPoint(lat: $lat, lang: $lang, pathLogo: $pathLogo, name: $name, description: $description, musicPath: $musicPath)';
  }

}