// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Todo _$$_TodoFromJson(Map<String, dynamic> json) => _$_Todo(
      id: json['id'] as String? ?? "",
      date: json['date'] as String? ?? "",
      task: json['task'] as String? ?? "",
      category: json['category'] == null
          ? const CategoryModel()
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TodoToJson(_$_Todo instance) => <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'task': instance.task,
      'category': instance.category,
    };
