import 'package:json_annotation/json_annotation.dart';

import 'genre.dart';

part 'movie.g.dart';

// https://flutter.dev/docs/development/data-and-backend/json
@JsonSerializable()
class Movie {
  @JsonKey()
  final int id;

  @JsonKey()
  final String title;

  @JsonKey()
  final String overview;

  @JsonKey(name: 'original_title')
  final String originalTitle;

  @JsonKey(name: 'original_language')
  final String originalLanguage;

  @JsonKey(name: 'poster_path')
  final String posterPath;

  @JsonKey(name: 'backdrop_path')
  final String backdropPath;

  @JsonKey(name: 'vote_average')
  final double voteAverage;

  @JsonKey(name: 'genre_ids')
  final List<int> genreIds;

  @JsonKey(name: 'release_date')
  final String releaseDate;

  @JsonKey(name: 'video')
  final bool hasVideo;

  String get posterUrl {
    if (posterPath == null) {
      return null;
    }
    return "https://image.tmdb.org/t/p/w500$posterPath";
  }

  String get backdropUrl {
    if (backdropPath == null) {
      return null;
    }
    return "https://image.tmdb.org/t/p/w780$backdropPath";
  }

  String get webUrl => "https://www.themoviedb.org/movie/$id";

  List<Genre> get genres =>
      Genre.GENRES.where((g) => genreIds.contains(g.id)).toList();

  const Movie(
    this.id,
    this.title,
    this.originalTitle,
    this.posterPath,
    this.backdropPath,
    this.voteAverage,
    this.overview,
    this.originalLanguage,
    this.genreIds,
    this.releaseDate,
    this.hasVideo,
  );

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);
}
