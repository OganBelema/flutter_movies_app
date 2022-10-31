import 'package:flutter/material.dart';

class MovieDetailView extends StatelessWidget {
  const MovieDetailView({Key? key, required this.movieName}) : super(key: key);

  final String movieName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movieName),
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
