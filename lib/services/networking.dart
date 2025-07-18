import 'package:http/http.dart';
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    Response response = await get((Uri.parse(url)));

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);

      // double temperature = decodedData['main']['temp'];
      // int weatherdescription = decodedData['weather'][0]['id'];
      // String cityname = decodedData['name'];

    }
    else {
      print(response.statusCode);
    }
  }
}