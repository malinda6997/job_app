import 'package:flutter/material.dart';
import 'package:job_app/Models/job_model.dart';

class jobViewPage extends StatefulWidget {
  const jobViewPage({super.key, required this.model});

  final jobModel model;

  @override
  State<jobViewPage> createState() => _jobViewPageState();
}

class _jobViewPageState extends State<jobViewPage> {
  final tabButtons = ["Description", "Company", "Reviews"];
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 241, 237, 237),
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 210,
                  width: size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        widget.model.cover
                          ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      SafeArea(
                          child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 0, 0, 0),
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
                Container(
                  width: size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.model.title,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text(
                              widget.model.salary,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 92, 90, 90)),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 5, bottom: 5),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade700,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                widget.model.type,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Hero(
                              tag: widget.model.logo,
                              child: Image.network(
                                widget.model.logo,
                                width: 30,
                                height: 30,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.model.companyName,
                                  style: TextStyle(
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  widget.model.location,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 125, 123, 123),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text(
                              widget.model.time,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 125, 123, 123),
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: tabButtons.map((e) {
                    return GestureDetector(
                        onTap: () {
                          setState(() {
                            tabIndex = tabButtons.indexOf(e);
                          });
                        },
                        child: Chip(
                            backgroundColor: tabIndex == tabButtons.indexOf(e)
                                ? Colors.black
                                : Colors.white,
                            label: Text(
                              e,
                              style: TextStyle(
                                  color: tabIndex == tabButtons.indexOf(e)
                                      ? Colors.white
                                      : Colors.black),
                            )));
                  }).toList(),
                ),
                tabIndex == 0
                    ? Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          height: 170,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      )
                    : tabIndex == 1
                        ? Text("Malinda")
                        : Text("reviews"),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: size.width,
                height: 70,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(16)),
                      child: Icon(Icons.bookmark, color: Colors.white),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: size.width * 0.7,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(16)),
                      child: Center(
                        child: Text("Apply Now",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
