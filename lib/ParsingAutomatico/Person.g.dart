// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
      name: json['name'] as String,
      lastName: json['lastName'] as String,
      age: (json['age'] as num).toInt(),
    );

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'name': instance.name,
      'lastName': instance.lastName,
      'age': instance.age,
    };
