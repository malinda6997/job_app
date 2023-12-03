import 'package:flutter/material.dart';

class customeAppBar extends StatelessWidget {
  const customeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey.shade100),
          ),
          child: Icon(Icons.menu),
        ),
        Text(
          "Creative Job",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://d2qp0siotla746.cloudfront.net/img/use-cases/profile-picture/template_3.jpg")),
              color: Colors.grey,
              borderRadius: BorderRadius.circular(30)),
        ),
      ],
    );
  }
}
