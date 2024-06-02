//Wzięte z Air Quality Index - pomocnicza klasa dla deweloperów

class AirQuality {
  int aqi;
  String cityName;
  String? message;
  String? emojiRef;

  AirQuality({
    required this.aqi,
    required this.cityName,
    this.message,
    this.emojiRef,
  });

  factory AirQuality.fromJson(Map<String, dynamic> json) {
    return AirQuality(
      aqi: json['data']['aqi'] as int,
      cityName: json['data']['city']['name'] as String,
    );
  }

  @override
  String toString() {
    return 'AirQuality(aqi: $aqi, cityName: $cityName, message: $message, emojiRef: $emojiRef)';
  }
}

String APIKEY = "724fb8f7c8bd86a6c48b04ae32bcf64601abb9e8";