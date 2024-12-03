import 'dart:convert';

import 'package:http/http.dart';

import 'todohaya.dart';

Future<List<ToDohaya>> fetchToDos() async {
  List<ToDohaya> toDos = [];

  try {
    final response = await get(Uri.parse('https://dummyjson.com/todos'));
    if (response.statusCode == 200 || response.statusCode == 201) {
      // Parse the JSON response as a Map
      Map<String, dynamic> json = jsonDecode(response.body);

      // Access the "todos" key which contains the list
      List<dynamic> data = json['todos'];


      for (var todo in data) {
        toDos.add(ToDohaya.fromJson(todo));
        print(todo);
      }
      return toDos;
    }
    return toDos;
  }catch(e) {
   print(e);

  }
  return toDos;

}