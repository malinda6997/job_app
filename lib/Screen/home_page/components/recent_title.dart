import 'package:flutter/material.dart';
class recent_title extends StatelessWidget {
  const recent_title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Recent Jobs",
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