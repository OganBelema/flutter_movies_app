import 'package:flutter/material.dart';

class MovieDetailsThumbnail extends StatelessWidget {
  const MovieDetailsThumbnail({Key? key, required this.thumbnail}) : super(key: key);

  final String thumbnail;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 190,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(thumbnail),
                  fit: BoxFit.cover
                )
              ),
            ),
            Icon(Icons.play_circle_outline, size: 100, color: Colors.white,)
          ],
        ),
        Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(colors: [
              Color(0x00f5f5f5), Color(0xfff5f5f5)
            ],radius: 0.9 ),
          ),
          height: 190,
        )
      ],
    );
  }
}
