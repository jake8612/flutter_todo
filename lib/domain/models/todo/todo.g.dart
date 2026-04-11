// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Todo _$TodoFromJson(Map<String, dynamic> json) => _Todo(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      detail: json['detail'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      deletedAt: json['deletedAt'] as String?,
    );

Map<String, dynamic> _$TodoToJson(_Todo instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'detail': instance.detail,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
    };
