import 'package:json_annotation/json_annotation.dart';

part 'actor.g.dart';

// https://flutter.dev/docs/development/data-and-backend/json
@JsonSerializable()
class Actor {
  final int id;

  final String name;

  final String character;

  @JsonKey(name: 'profile_path')
  final String profilePath;

  String get profileUrl {
    if (profilePath == null) {
      return null;
    }
    return "https://image.tmdb.org/t/p/w300$profilePath";
  }

  const Actor(
    this.id,
    this.name,
    this.character,
    this.profilePath,
  );

  factory Actor.fromJson(Map<String, dynamic> json) => _$ActorFromJson(json);

  Map<String, dynamic> toJson() => _$ActorToJson(this);
}
