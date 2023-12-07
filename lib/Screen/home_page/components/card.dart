import 'package:flutter/material.dart';
import 'package:job_app/Screen/jobView.dart';
import 'package:job_app/services/get_data.dart';

class card extends StatelessWidget {
  const card({
    super.key,
    required this.data,
    required this.size,
  });

  final GetData data;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(data.getJobData().length, (index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => jobViewPage(model:data.getJobData()[index])));
            },
            child: Padding(
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              color: const Color.fromARGB(255, 197, 197, 197)),
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
                        Hero(
                          tag: data.getJobData()[index].logo,
                          child: Image.network(
                            data.getJobData()[index].logo,
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
                              color: Color.fromARGB(255, 176, 166, 166),
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
