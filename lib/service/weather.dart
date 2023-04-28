class Weather {
  final double temperatureC;
  final double temperatureF;
  final String condition;
  final String locationName;

  Weather(
      {this.temperatureC = 0,
      this.temperatureF = 0,
      this.condition = "Sunny",
      this.locationName = "London"});

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      temperatureC: json['current']['temp_c'],
      temperatureF: json['current']['temp_f'],
      condition: json['current']['condition']['text'],
      locationName: json['location']['name'],
    );
  }
}
