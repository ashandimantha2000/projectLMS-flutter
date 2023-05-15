class Student{
  int std_id;
  String std_name;
  String std_email;
  String std_password;

  Student(
      this.std_id,
      this.std_name,
      this.std_email,
      this.std_password,
      );

factory Student.fromJson(Map<String, dynamic> json) => Student(
  int.parse(json["std_id"]),
  json["std_name"],
  json["std_email"],
  json["std_password"],
);



  //Convert data to Jsaon format
  Map<String, dynamic> toJson()=>
      {
        'std_id': std_id.toString(),
        'std_name': std_name.toString(),
        'std_email': std_email.toString(),
        'std_password': std_password.toString(),


      };

}