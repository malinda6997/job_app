class jobModel {
  String title;
  String type;
  String salary;
  String companyName;
  String logo;
  String location;
  String time;

  jobModel(
      {required this.title,
      this.type = "Full time",
      required this.salary,
      required this.companyName,
      required this.location,
      required this.logo,
      required this.time});
}
