import 'package:flutter/material.dart';
import 'package:job_app/Screen/home_page/components/appbar.dart';
import 'package:job_app/Screen/home_page/components/search_bar.dart';
import 'package:job_app/services/get_data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GetData data = GetData();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 237, 237),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customeAppBar(),
              SizedBox(
                height: 12,
              ),
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
              SizedBox(
                height: 10,
              ),
              searchBar(size: size),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Job",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "Show All",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  )
                ],
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(data.getJobData().length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        width: size.width * 0.68,
                        height: size.height * 0.24,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  data.getJobData()[index].title,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                Icon(
                                  Icons.bookmark_add,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  data.getJobData()[index].salary,
                                  style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 197, 197, 197)),
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
                                    data.getJobData()[index].type,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                           
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    data.getJobData()[index].logo,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
