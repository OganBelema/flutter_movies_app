import 'package:flutter/material.dart';

Widget movieDetailsExtraPosters({required List<String> posters}){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("More Movie Posters".toUpperCase(),
        style: const TextStyle(fontSize: 14, color: Colors.black45),),
        Container(
          height: 200,
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: MediaQuery.of(context).size.width / 4,
                  height: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(posters[index]),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 8,),
              itemCount: posters.length),
        )
      ],
    ),
  );
}