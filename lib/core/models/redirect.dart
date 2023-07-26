import 'package:flutter/foundation.dart';

import 'package:json_annotation/json_annotation.dart';

part 'redirect.g.dart';

@JsonSerializable()
class Redirect {
  final String? native;
  final String? universal;

  factory Redirect.empty() => const Redirect(
    native: '',
    universal: '',
  );

  const Redirect({
    this.native,
    this.universal,
  }) ;

  factory Redirect.fromJson(Map<String, dynamic> json) =>
      _$RedirectFromJson(json);

  Map<String, dynamic> toJson() => _$RedirectToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Redirect &&
        other.native == native &&
        other.universal == universal;
  }

  @override
  int get hashCode {
    return native.hashCode ^ universal.hashCode;
  }

}
