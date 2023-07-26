// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppMetadata _$AppMetadataFromJson(Map<String, dynamic> json) => AppMetadata(
      name: json['name'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      icons: (json['icons'] as List<dynamic>).map((e) => e as String).toList(),
      redirect: json['redirect'] == null
          ? null
          : Redirect.fromJson(json['redirect'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppMetadataToJson(AppMetadata instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'description': instance.description,
    'url': instance.url,
    'icons': instance.icons,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('redirect', instance.redirect?.toJson());
  return val;
}
