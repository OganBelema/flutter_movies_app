import 'package:flutter/material.dart';

Widget movieField({required String field, required String value}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("$field: ", style: const TextStyle(
        color: Colors.black38,
        fontSize: 13,
        fontWeight: FontWeight.w300
      ),),
      Expanded(
        child: Text(value, style: const TextStyle(
          color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.w300
        ),),
      )
    ],
  );
}