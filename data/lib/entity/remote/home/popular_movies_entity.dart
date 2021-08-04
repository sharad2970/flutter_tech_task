import 'package:domain/model/leagues/leagues.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:domain/model/popular_movies.dart';
part 'popular_movies_entity.g.dart';

@JsonSerializable()
class PopularMoviesEntity
    implements BaseLayerDataTransformer<PopularMoviesEntity, PopularMovies> {

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'original_name')
  final String title;
  @JsonKey(name: 'posterPath')
  final String posterPath;
  @JsonKey(name: 'backdropPath')
  final String backdropPath;
  @JsonKey(name: 'overview')
  final String overview;
  @JsonKey(name: 'voteAverage')
  final double voteAverage;
  @JsonKey(name: 'voteCount')
  final int voteCount;
  @JsonKey(name: 'releaseDate')
  final String releaseDate;

  PopularMoviesEntity(
      this.id,
      this.title,
      this.posterPath,
      this.backdropPath,
      this.overview,
      this.voteAverage,
      this.voteCount,
      this.releaseDate);

  factory PopularMoviesEntity.fromJson(Map<String, dynamic> json) =>
      _$PopularMoviesEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PopularMoviesEntityToJson(this);

  @override
  PopularMoviesEntity restore(data) {
    throw UnimplementedError();
  }

  @override
  PopularMovies transform() {
    return PopularMovies(
        id: this.id,
        title: this.title,
        posterPath: this.posterPath,
        backdropPath: this.backdropPath,
        overview: this.overview,
        voteAverage: this.voteAverage,
        voteCount: this.voteCount,
        releaseDate: this.releaseDate);
  }
}
