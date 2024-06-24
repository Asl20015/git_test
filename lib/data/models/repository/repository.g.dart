// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Repository _$RepositoryFromJson(Map<String, dynamic> json) => Repository(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      url: json['url'] as String,
      updatedAt: json['updated_at'] as String,
      forksCount: (json['forks_count'] as num).toInt(),
      defaultBranch: json['default_branch'] as String,
    );

Map<String, dynamic> _$RepositoryToJson(Repository instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'url': instance.url,
      'updated_at': instance.updatedAt,
      'forks_count': instance.forksCount,
      'default_branch': instance.defaultBranch,
    };
