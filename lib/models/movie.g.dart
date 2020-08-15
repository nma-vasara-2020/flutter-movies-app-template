// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return Movie(
    json['id'] as int,
    json['title'] as String,
    json['original_title'] as String,
    json['poster_path'] as String,
    json['backdrop_path'] as String,
    (json['vote_average'] as num)?.toDouble(),
    json['overview'] as String,
    json['original_language'] as String,
    (json['genre_ids'] as List)?.map((e) => e as int)?.toList(),
    json['release_date'] as String,
    json['video'] as bool,
  );
}

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'overview': instance.overview,
      'original_title': instance.originalTitle,
      'original_language': instance.originalLanguage,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'vote_average': instance.voteAverage,
      'genre_ids': instance.genreIds,
      'release_date': instance.releaseDate,
      'video': instance.hasVideo,
    };
