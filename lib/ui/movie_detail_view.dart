import 'package:flutter/material.dart';
import 'package:flutter_movies_app/data/movie.dart';
import 'package:flutter_movies_app/ui/components/horizontal_line.dart';
import 'package:flutter_movies_app/ui/components/movie_detail_cast.dart';
import 'package:flutter_movies_app/ui/components/movie_details_extra_posters.dart';
import 'package:flutter_movies_app/ui/movie_details_header_with_poster.dart';
import 'package:flutter_movies_app/ui/movie_details_thumbnail.dart';

class MovieDetailView extends StatelessWidget {
  const MovieDetailView({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: ListView(
        children: [
          MovieDetailsThumbnail(thumbnail: movie.images[0]),
          MovieDetailsHeaderWithPoster(movie: movie),
          horizontalLine(),
          movieDetailCast(movie),
          horizontalLine(),
          movieDetailsExtraPosters(posters: movie.images)
        ],
      )
    );
  }
}
