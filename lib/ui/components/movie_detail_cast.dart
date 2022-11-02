import 'package:flutter/material.dart';

import '../../data/movie.dart';
import 'movie_field.dart';

Widget movieDetailCast(Movie movie){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Column(
      children: [
        movieField(field: "Cast", value: movie.actors),
        movieField(field: "Director", value: movie.director),
        movieField(field: "Awards", value: movie.awards)
      ],
    ),
  );
}
