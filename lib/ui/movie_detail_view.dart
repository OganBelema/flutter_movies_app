import 'package:flutter/material.dart';
import 'package:flutter_movies_app/data/movie.dart';

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
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: Text("Go back"),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
