import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

// g.dart 파일 생성 : dart run build_runner build

@JsonSerializable()
class Welcome {
  String message;

  Welcome({
    required this.message,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) =>
      _$WelcomeFromJson(json);

  Map<String, dynamic> toJson() => _$WelcomeToJson(this);
}
