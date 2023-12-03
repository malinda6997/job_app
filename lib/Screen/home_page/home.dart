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
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
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
                      "Popular Jobs",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    data.getJobData()[index].title,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
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
                              SizedBox(
                                height: 56,
                              ),
                              Row(
                                children: [
                                  Image.network(
                                    data.getJobData()[index].logo,
                                    width: 30,
                                    height: 30,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        data.getJobData()[index].companyName,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        data.getJobData()[index].location,
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Text(
                                    data.getJobData()[index].time,
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 176, 166, 166),
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Jobs",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "Show All",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: List.generate(
                    data.getJobData().length,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          padding: EdgeInsets.all(5.0),
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: ListTile(
                            leading: Image.network(
                              data.getJobData()[index].logo,
                              width: 30,
                              height: 30,
                            ),
                            title: Text(
                              data.getJobData()[index].title,
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            subtitle: Text(
                                "${data.getJobData()[index].companyName} - ${data.getJobData()[index].type}       ${data.getJobData()[index].time}"),
                            //trailing: Text(
                               // "${data.getJobData()[index].time}"),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
