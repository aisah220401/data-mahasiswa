import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uas/models/employee_model.dart';
import '../models/employee_model.dart';
import '../providers/employee_provider.dart';

class Employee extends StatefulWidget{
  final data = [
    EmployeeModel(id: "1", employeeName: "Siti Aisah", employeeAge: "21", profilImage: "",),
    EmployeeModel(id: "2", employeeName: "Tiger Nixon", employeeAge: "22", profilImage: "",),
    {
	    "id": "1",
	    "employee_name": "Siti Aisah",
	    "employee_nim": "30819051",
	    "employee_age": "21",
	    "profile_image": ""
	  },
    {
	    "id": "2",
	    "employee_name": "Tiger Nixon",
	    "employee_nim": "30819002",
	    "employee_age": "22",
	    "profile_image": ""
	} ,
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Mahasiswa'),
        ),
      body: RefreshIndicator(
        onRefresh: () => 
         Provider.of<EmployeeProvider>(context, listen: false).getEmployee(),
         color: Colors.red,
        child: Container(
          margin: EdgeInsets.all(10),
          child: FutureBuilder(
            future: Provider.of<EmployeeProvider>(context, listen: false).getEmployee(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting){
                return Center(child: CircularProgressIndicator(),);
              }
              return Consumer<EmployeeProvider>(
              build(context, data, _){
                return ListView.builder(
                itemCount: data.dataEmployee.length, 
                itemBuilder: (context, i){
                return Card(
                  elevation: 8,
                 child: ListTile(
                  title: Text(
                    data.dataEmployee[i].employeeName,
                    style: 
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Umur: ${data.dataEmployee[i].employeeAge}'),
                    trailing: Text('Nim: ${data.dataEmployee[i].employeeNim}'),
                    ),
                  );
                },
              );
              },
                  
            );
            },
          ),
        ),
      ),
    );
  }
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }


