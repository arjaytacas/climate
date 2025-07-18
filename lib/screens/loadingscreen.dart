import 'package:climate/screens/locationscreen.dart';
import 'package:flutter/material.dart';
import 'package:climate/services/location.dart';
import 'package:climate/services/networking.dart';
import 'package:climate/utilities/contants.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation () async {
    Location location = Location();
    await location.requestPermissionAndGetLocation();

    NetworkHelper networkHelper = NetworkHelper('https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$kAPIKey&units=metric');
    var weatherdata = await networkHelper.getData();
    
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(locationweather: weatherdata);
    }));
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
  }
