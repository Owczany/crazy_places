import 'package:crazy_places/classes/points/location_point.dart';

class FunnyPoint extends LocationPoint {
  String description;
  String pathYT;

  FunnyPoint({
    required double lat,
    required double lang,
    required String pathLogo,
    required String name,
    required this.description,
    required this.pathYT,
  }) : super(
    lat: lat,
    lang: lang,
    pathLogo: pathLogo,
    name: name,
  );

  @override
  String toString() {
    return 'FunnyPoint(lat: $lat, lang: $lang, pathLogo: $pathLogo, name: $name, description: $description, pathYT: $pathYT)';
  }
}