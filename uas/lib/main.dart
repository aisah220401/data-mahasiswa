import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uas/providers/employee_provider.dart';
import './pages/employee.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  Widget build(BuildContext context){
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => EmployeeProvider(),
          )
      ],
      child: MaterialApp(
        home: Employee(),
      ),
    ); // MaterialApp

  }
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
  
}