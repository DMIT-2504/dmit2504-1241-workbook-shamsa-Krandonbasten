import 'dart:io';
import 'package:futures_json_exercise/futures_json_exercise.dart' as futures_json_exercise;
import 'package:http/http.dart' as http;
import 'dart:convert';

void main(List<String> arguments) async{
  while(true){
    print('Enter a word or type exit to quit');
    String? word = stdin.readLineSync();
    
    if(word == null){
      print('Please enter a correct word');
      continue;
    }
    else if(word == 'exit'){
      print('quitting program');
      break;
    }
    
    var baseURL = 'https://api.dictionaryapi.dev/api/v2/entries/en/';
    var wordEndpoint = baseURL+word;
    var parsedURL = Uri.parse(baseURL+word);
    var response = await http.get(parsedURL);

    var res = await getJson(wordEndpoint);

    print('');
  }
}

Future<dynamic> getJson(String endPoint) async{
  var url = Uri.parse(endPoint);
  var response = await http.get(url);
  print(response);
  var decodedJson = jsonDecode(response.body);
  return decodedJson;
}