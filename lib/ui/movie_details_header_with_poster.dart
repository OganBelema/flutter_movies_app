import 'package:flutter/material.dart';
import 'package:flutter_movies_app/data/movie.dart';
import 'package:flutter_movies_app/ui/movie_poster.dart';

class MovieDetailsHeaderWithPoster extends StatelessWidget {
  const MovieDetailsHeaderWithPoster({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          MoviePoster(poster: movie.images[0])
        ],
      ),
    );
  }
}
