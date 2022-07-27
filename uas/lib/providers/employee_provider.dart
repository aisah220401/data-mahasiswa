import 'dart:html';

import 'package:dw_employee_crud/models/employee_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

import 'package:uas/models/employee_model.dart';

class EmployeeProvider extends ChangeNotifier {
  List<EmployeeModel> _data = [];
  List<EmployeeModel> get dataEmployee => _data;

  Future<List<EmployeeModel>> getEmployee() async {
    final Url = '	https://dummy.restapiexample.com/api/v1/employees';
    final response = await http.get(url);

    if (response.statusCode == 200){
        final result = json.decode(response.body)['data'].cast<Map<String, dynamic>>();
        _data = result.map<EmployeeModel>(json) => EmployeeModel.fromJson(json).toList();
        print(_data);
        return _data;
    }else {
      throw Exception();
    }
    }
  }
