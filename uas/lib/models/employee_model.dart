class EmployeeModel{
 String id;
 String employeeName;
 String employeeAge;
 String employeeNim;
 String profilImage;
}
  EmployeeModel({
    this.id, 
    this.employeeName, 
    this.employeeAge, 
    this.employeeNim,
    this.profilImage
    });

  //FORMAT TO JSON
    // ignore: non_constant_identifier_names
    factory EmployeeModel.fromJson(Map<String, dynamic> json) => EmployeeModel(
      id: json['id'],
      employeeName: json['employee_name'],
      employeeAge: json['employee_age'],
      employeeNim: json['employee_nim'],
      profilImage: json['profil_image']
    );
  //PARSE JSON