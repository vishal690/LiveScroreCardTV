import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpClientHelper {
  static Future<Map<String, dynamic>> Get(String Url) async {
    final response = await http.get(Uri.parse(Url));

    if (response.statusCode == 200) {
      //var doc = loadYaml(response.body);

      Map<String, dynamic> user = jsonDecode(response.body);
      return user;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
