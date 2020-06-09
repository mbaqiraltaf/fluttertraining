import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import '../lib/main.dart';
import '../lib/models/weatherresponse.dart';

// Create a MockClient using the Mock class provided by the Mockito package.
// Create new instances of this class in each test.
class MockClient extends Mock implements http.Client {}

main() {
  group('fetchPost', () {
    test('returns a Post if the http call completes successfully', () async {
      final client = MockClient();

      // Use Mockito to return a successful response when it calls the
      // provided http.Client.
      when(client.get('http://api.openweathermap.org/data/2.5/weather?q=karachi&appid=a7b7f4efaa2172a1026a06259f08da86&units=metric'))
          .thenAnswer((_) async => http.Response('{"coord": {"lat": 1.0, "lon": 2.0}, "main": {"temp": 20, "temp_min": 15, "temp_max": 25 }}', 200));
      expect(await fetchWeather("karachi", client), isA<WeatherResponse>());
    });

    test('throws an exception if the http call completes with an error', () {
      final client = MockClient();

      // Use Mockito to return an unsuccessful response when it calls the
      // provided http.Client.
      when(client.get('http://api.openweathermap.org/data/2.5/weather?q=karachi&appid=a7b7f4efaa2172a1026a06259f08da86&units=metric'))
          .thenAnswer((_) async => http.Response('Not Found', 404));

      expect(fetchWeather("karachi",client), throwsException);
    });
  });
}