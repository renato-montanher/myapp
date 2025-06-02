import 'package:json_annotation/json_annotation.dart';

part 'Person.g.dart';

//dart run build_runner build --delete-conflicting-outputs

@JsonSerializable()
class Person {
  /// The generated code assumes these values exist in JSON.
  final String name, lastName;
  final int age;

  Person({required this.name, required this.lastName, required this.age});

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}
