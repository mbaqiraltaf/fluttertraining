import 'coordinates.dart';
import 'temperature.dart';

class WeatherResponse {
  final Coordinates coord;
  final Temperature temperatureInfo;

  WeatherResponse({this.coord, this.temperatureInfo});

  factory WeatherResponse.fromJson(
      Coordinates coordinates, Temperature temperatureInfo) {
    return WeatherResponse(
        coord: coordinates, temperatureInfo: temperatureInfo);
  }
}
