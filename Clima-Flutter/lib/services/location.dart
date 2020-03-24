import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator().getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
          locationPermissionLevel: GeolocationPermission.locationAlways);
      this.latitude = position.latitude;
      this.longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
