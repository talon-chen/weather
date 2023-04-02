import 'package:geolocator/geolocator.dart';

class Location {
  double? latitue;
  double? longtitue;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      latitue = position.latitude;
      longtitue = position.longitude;
    } catch (e) {
      rethrow;
    }
  }
}
