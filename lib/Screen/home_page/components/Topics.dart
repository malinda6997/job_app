import 'package:flutter/material.dart';
class head_topics extends StatelessWidget {
  const head_topics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Good Morning Sayuri",
          style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
      height: 12,
    ),
    Text(
      "Find Your\nCreative Job",
      style: TextStyle(
          color: Colors.black,
          fontSize: 32,
          fontWeight: FontWeight.bold,
          height: 1.0),
    ),
      ],
    );
  }
}