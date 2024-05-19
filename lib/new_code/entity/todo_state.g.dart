// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoStateImpl _$$TodoStateImplFromJson(Map<String, dynamic> json) =>
    _$TodoStateImpl(
      title: json['title'] as String,
      archived: json['archived'] as bool? ?? false,
    );

Map<String, dynamic> _$$TodoStateImplToJson(_$TodoStateImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'archived': instance.archived,
    };
