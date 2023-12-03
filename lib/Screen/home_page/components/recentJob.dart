import 'package:flutter/material.dart';
import 'package:job_app/Models/job_model.dart';
import 'package:job_app/services/get_data.dart';

class recentJob extends StatelessWidget {
  const recentJob({
    super.key,
    required this.data,
  });

  final GetData data;

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}