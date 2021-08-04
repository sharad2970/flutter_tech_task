// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_movies_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularMoviesEntity _$PopularMoviesEntityFromJson(Map<String, dynamic> json) {
  return PopularMoviesEntity(
    json['id'] as int,
    json['original_name'] as String,
    json['posterPath'] as String,
    json['backdropPath'] as String,
    json['overview'] as String,
    (json['voteAverage'] as num)?.toDouble(),
    json['voteCount'] as int,
    json['releaseDate'] as String,
  );
}

Map<String, dynamic> _$PopularMoviesEntityToJson(
        PopularMoviesEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_name': instance.title,
      'posterPath': instance.posterPath,
      'backdropPath': instance.backdropPath,
      'overview': instance.overview,
      'voteAverage': instance.voteAverage,
      'voteCount': instance.voteCount,
      'releaseDate': instance.releaseDate,
    };
