import 'package:flutter/material.dart';
import 'package:job_app/Screen/home_page/components/Topics.dart';
import 'package:job_app/Screen/home_page/components/appbar.dart';
import 'package:job_app/Screen/home_page/components/card.dart';
import 'package:job_app/Screen/home_page/components/recentJob.dart';
import 'package:job_app/Screen/home_page/components/recent_title.dart';
import 'package:job_app/Screen/home_page/components/search_bar.dart';
import 'package:job_app/Screen/home_page/components/titles.dart';
//import 'package:job_app/Screen/jobView.dart';
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
                head_topics(),
                SizedBox(
                  height: 10,
                ),
                searchBar(size: size),
                SizedBox(
                  height: 15,
                ),
                Titles_showAll(),
                SizedBox(height: 10),
                card(data: data, size: size),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [recent_title()],
                ),
                SizedBox(
                  height: 10,
                ),
                recentJob(data: data),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
