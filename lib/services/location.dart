import 'package:geolocator/geolocator.dart';

class Location {

  late double latitude;
  late double longitude;

  Future<void> requestPermissionAndGetLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        print('Location permission is denied');
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      print('Location permission is denied forever');
    }

    final LocationSettings locationSettings = LocationSettings(
        accuracy: LocationAccuracy.low);

    try {
      Position position = await Geolocator.getCurrentPosition(
          locationSettings: locationSettings);

      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}