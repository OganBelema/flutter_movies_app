import 'package:flutter/material.dart';

Widget horizontalLine(){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0,
    vertical: 16.0),
    child: Container(
      height: 0.5,
      color: Colors.grey,
    ),
  );
}