import 'dart:convert';
import 'package:myapp/ParsingAutomatico/Person.dart';

void main() {
  final jsonString = '{ "name": "Renato ", "lastName": "Montanha", "age":34 }';
  final decodedMap = jsonDecode(jsonString);
  final person = Person.fromJson(decodedMap);
  print(person.name); // prints "Renato"
  print(person.lastName); // prints "Montanha"
  print(person.age);
  final json = jsonEncode(person);
  print(json); // prints "{'id': 'Rento', 'lastName': 'Montanha'}"
}
