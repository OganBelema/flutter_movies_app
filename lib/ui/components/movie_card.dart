import 'package:flutter/material.dart';

import '../../data/movie.dart';
import '../movie_detail_view.dart';

Widget movieCard(Movie movie, BuildContext context) {
  return InkWell(
    child: Container(
      margin: const EdgeInsets.only(left: 60),
      width: MediaQuery.of(context).size.width,
      height: 120.0,
      child: Card(
        color: Colors.black45,
        child: Padding(
          padding: const EdgeInsets.only(
              top: 16.0, bottom: 16.0, left: 54.0, right: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      movie.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.white),
                    ),
                  ),
                  Text(
                    "Rating: ${movie.imdbRating} / 10",
                    style:_mainTextStyle(),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Released: ${movie.released}",
                      style: _mainTextStyle()),
                  Text(movie.runtime,
                      style: _mainTextStyle()),
                  Text(movie.rated,
                      style: _mainTextStyle())
                ],
              )
            ],
          ),
        ),
      ),
    ),
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return MovieDetailView(movie: movie);
      }));
    },
  );
}

TextStyle _mainTextStyle(){
return const TextStyle(fontSize: 15.0, color: Colors.grey);
}
