import 'package:crazy_places/classes/points/location_point.dart';
import 'package:audioplayers/audioplayers.dart';

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

  Future<void> playSound() async { //puszczanie dzwieku po sciezce
    AudioPlayer audioPlayer = AudioPlayer();
    print("dzwiek zaczety");
    await audioPlayer.play(AssetSource(this.musicPath));
    print("dzwiek zakonczony");
  }

}