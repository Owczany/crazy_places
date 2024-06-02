class LocationPoint{
  double lat;
  double lang;
  String pathLogo;
  String name;

  LocationPoint({
    required this.lat,
    required this.lang,
    required this.pathLogo,
    required this.name,
  });

  @override
  String toString() {
    return 'LocationPoint(lat: $lat, lang: $lang, pathLogo: $pathLogo, name: $name)';
  }
}