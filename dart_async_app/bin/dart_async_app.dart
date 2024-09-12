import 'dart:convert';

import 'package:http/http.dart' as http;

void main(List<String> arguments) {
  getDogImage();
  getDogBreeds();
}

void getDogImage() async {
  var dogData = await getJson('https://dog.ceo/api/breeds/image/random');
}

void getDogBreeds() async {
  var dogData = await getJson('https://dog.ceo/api/breeds/list/all');
  print(dogData['message']['terrier'][1]);
}

Future<dynamic> getJson(String endPoint) async{
  var url = Uri.parse(endPoint);
  var response = await http.get(url);
  print(response);
  var decodedJson = jsonDecode(response.body);
  return decodedJson;
}