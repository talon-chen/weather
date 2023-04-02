import 'package:http/http.dart';
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    var uri = Uri.parse(url);
    // final weatherUrl = Uri.https('api.openweathermap.org', '/data/2.5/weather', {
    //   'lat': lat.toString(),
    //   'lon': lon.toString(),
    //   'appid': 'c2c40d031d351c49948b977118592743',
    //   'units': 'metric'
    // });
    Response res = await get(uri);

    if (res.statusCode == 200) {
      return jsonDecode(res.body);
    } else {
      //
    }
  }
}
