// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: (json['id'] as num).toInt(),
      login: json['login'] as String,
      avatar: json['avatar_url'] as String,
      url: json['html_url'] as String,
      typeName: json['type'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'avatar_url': instance.avatar,
      'html_url': instance.url,
      'type': instance.typeName,
    };
