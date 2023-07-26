// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redirect.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Redirect _$RedirectFromJson(Map<String, dynamic> json) => Redirect(
      native: json['native'] as String?,
      universal: json['universal'] as String?,
    );

Map<String, dynamic> _$RedirectToJson(Redirect instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('native', instance.native);
  writeNotNull('universal', instance.universal);
  return val;
}
