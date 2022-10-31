import 'package:flutter/material.dart';

class MovieDetailView extends StatelessWidget {
  const MovieDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: Text("Go back"),
            onPressed: (){

            },
          ),
        ),
      ),
    );
  }
}
