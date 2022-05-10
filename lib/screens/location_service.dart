import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

final String key = 'AIzaSyBjdoUvHy_9GP6eQvZnvcV0Qa6Ml_P5ozE';
Future<Map<String, dynamic>> getPlaceId(servicio) async {
  final String url =
      'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=$servicio&inputtype=textquery&key=$key';

  var response = await http.get(Uri.parse(url));

  var json = convert.jsonDecode(response.body);

  var placeId = json['candidates'][0]['place_id'] as String;
  final String url1 =
      'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=$key';
  var response1 = await http.get(Uri.parse(url1));

  var json1 = convert.jsonDecode(response1.body);

  var results = json1['result'] as Map<String, dynamic>;
  print(results);
  return results;
}
