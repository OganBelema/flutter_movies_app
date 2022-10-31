import 'package:flutter/material.dart';
import 'package:flutter_movies_app/ui/movie_image.dart';

import '../data/movie.dart';
import 'movie_card.dart';

class MovieListView extends StatefulWidget {
  const MovieListView({super.key});

  @override
  State<MovieListView> createState() => _MovieListViewState();
}

class _MovieListViewState extends State<MovieListView> {

  final List<Movie> _movieList = Movie.getMovies();

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Movies"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade400,
      body: ListView.builder(
        itemCount: _movieList.length,
        itemBuilder: (BuildContext context, int index) {
          return Stack(children: [
            movieCard(_movieList[index], context),
            Positioned(
                top: 10,
                child: movieImage(_movieList[index].images[0]))
          ]);
        },
      )
    );
  }
}
