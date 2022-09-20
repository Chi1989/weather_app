import 'package:flutter/material.dart';

class WeatherLocation {
  final String city;
  final String dateTime;
  final String temperature;
  final String weatherType;
  final String iconUrl;
  final int wind;
  final int rain;
  final int humidity;

  WeatherLocation({
  required this.city,
  required this.dateTime,
  required this.temperature,
    required this.weatherType,
    required this.iconUrl,
    required this.wind,
    required this.rain,
    required this.humidity,
});

}

final locationList = [
  WeatherLocation(
      city: 'Benue',
      dateTime: '07:50 PM - Tuesday, 20 Sept 2022',
      temperature: '24\u2103',
      weatherType: 'Night',
      iconUrl: 'assets/images/moon.png',
      wind: 10,
      rain: 2,
      humidity: 10),

  WeatherLocation(
      city: 'Kogi',
      dateTime: '07:50 PM - Tuesday, 20 Sept 2022',
      temperature: '24\u2103',
      weatherType: 'Cloudy',
      iconUrl: 'assets/images/cloudy.jpg',
      wind: 8,
      rain: 7,
      humidity: 82),

  WeatherLocation(
      city: 'Lagos',
      dateTime: '07:50 PM - Tuesday, 20 Sept 2022',
      temperature: '24\u2103',
      weatherType: 'Rainy',
      iconUrl: 'assets/images/rainy_day.png',
      wind: 20,
      rain: 70,
      humidity: 91),

  WeatherLocation(
      city: 'Ekiti',
      dateTime: '07:50 PM - Tuesday, 20 Sept 2022',
      temperature: '24\u2103',
      weatherType: 'Sunny',
      iconUrl: 'assets/images/sunny_day.jpg',
      wind: 20,
      rain: 70,
      humidity: 91),

];