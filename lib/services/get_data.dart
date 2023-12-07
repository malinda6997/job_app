import 'package:job_app/Models/job_model.dart';

class GetData {
  final facebook =
      "https://th.bing.com/th/id/R.84669eb4301059aa602096c83a13e15f?rik=FkFOcs3CThcCJQ&pid=ImgRaw&r=0";
  final google =
      "https://th.bing.com/th/id/R.c8bf7c087ca9793d094042845707ffac?rik=fjZN1AYH30vXIw&riu=http%3a%2f%2fpngimg.com%2fuploads%2fgoogle%2fgoogle_PNG19635.png&ehk=ZmsumEtoeJQhKoUzQTZO2TEbYPBu0%2b7EFdjmJ3qljls%3d&risl=&pid=ImgRaw&r=0";

  final microsoft =
      "https://th.bing.com/th/id/R.3d6a2ad56bc3403c5cfcc3efe09b741b?rik=7w0mZmIMOAqbkQ&pid=ImgRaw&r=0";

  final uiux = "https://wallpaperaccess.com/full/6000163.jpg";
  final flutter = "https://i.morioh.com/201012/52852364.webp";
  final software = "https://wallpapercave.com/wp/wp7723995.jpg";

  List<jobModel> getJobData() {
    List<jobModel> jobs = [
      jobModel(
          title: "Senior UI UX Designer",
          salary: "LKR 250,000,00",
          companyName: "Facebook",
          location: "Australia",
          logo: facebook,
          time: "7 Days Left",
          cover:uiux),
      jobModel(
          title: "Senior Flutter Developer",
          salary: "LKR 100,000,00",
          companyName: "Google",
          location: "Australia",
          logo: google,
          time: "5 Days Left",
          cover:flutter),
      jobModel(
          title: "Software Engineer",
          salary: "LKR 120,000,00",
          companyName: "Microsoft",
          location: "Canada",
          logo: microsoft,
          time: "5 Days Left",
          cover:software),
    ];
    return jobs;
  }
}
