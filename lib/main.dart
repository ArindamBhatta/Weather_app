import 'package:flutter/material.dart';
import 'package:weather_app/repo/weather_repo.dart';
import 'package:weather_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
  WeatherRepo.getWeatherData();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
