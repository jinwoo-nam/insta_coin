// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventsData _$$_EventsDataFromJson(Map<String, dynamic> json) =>
    _$_EventsData(
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String,
      articleUrl: json['articleUrl'] as String,
      date: json['date'] as String,
      logos: (json['logos'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_EventsDataToJson(_$_EventsData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'articleUrl': instance.articleUrl,
      'date': instance.date,
      'logos': instance.logos,
    };
