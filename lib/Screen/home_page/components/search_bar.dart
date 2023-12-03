import 'package:flutter/material.dart';

class searchBar extends StatelessWidget {
  const searchBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: size.width * 0.73,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search for Jobs",
              fillColor: Colors.white,
              filled: true,
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        SizedBox(width: 10,),
        Container(
          width: 55,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(Icons.search,color: Colors.white,),
        )
      ],
    );
  }
}