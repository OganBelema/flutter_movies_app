import 'package:flutter/material.dart';

import '../data/movie.dart';
import 'movie_detail_view.dart';

Widget movieCard(Movie movie, BuildContext context) {
  return InkWell(
    child: Container(
      margin: EdgeInsets.only(left: 60),
      width: MediaQuery.of(context).size.width,
      height: 120.0,
      child: Card(
        color: Colors.black45,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 54.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(movie.title),
                  Text("Rating: ${movie.imdbRating} / 10"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Released: ${movie.released}"),
                  Text(movie.runtime),
                  Text(movie.rated)
                ],
              )
            ],
          ),
        ),
      ),
    ),
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return MovieDetailView(movie: movie);
      })
      );
    },
  );
}