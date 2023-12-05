import 'package:flutter/material.dart';
class Titles_showAll extends StatelessWidget {
  const Titles_showAll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Popular Jobs",
          style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(width: 150,),
        Text(
          "Show All",
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.grey),
        )
      ],
    );
  }
}