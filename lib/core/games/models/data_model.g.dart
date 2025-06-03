// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DataModel _$DataModelFromJson(Map<String, dynamic> json) => _DataModel(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  worth: json['worth'] as String,
  thumbnail: json['thumbnail'] as String,
  image: json['image'] as String,
  description: json['description'] as String,
  instructions: json['instructions'] as String,
  open_giveaway_url: json['open_giveaway_url'] as String,
  published_dat: json['published_dat'] as String,
  type: json['type'] as String,
  platforms: json['platforms'] as String,
  end_data: json['end_data'] as String,
  users: (json['users'] as num).toInt(),
  status: json['status'] as String,
  gamerpower_url: json['gamerpower_url'] as String,
);

Map<String, dynamic> _$DataModelToJson(_DataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'worth': instance.worth,
      'thumbnail': instance.thumbnail,
      'image': instance.image,
      'description': instance.description,
      'instructions': instance.instructions,
      'open_giveaway_url': instance.open_giveaway_url,
      'published_dat': instance.published_dat,
      'type': instance.type,
      'platforms': instance.platforms,
      'end_data': instance.end_data,
      'users': instance.users,
      'status': instance.status,
      'gamerpower_url': instance.gamerpower_url,
    };
