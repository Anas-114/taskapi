import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:taskapp/model/taskmodel.dart';

class TaskService {
 
  final Dio dio = Dio(
    BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com"),
  );

  Future<List<User>> getUser() async {
    try {
      final respose = await dio.get('/users');
      List data = respose.data;
      return data.map((p) => User.fromJson(p)).toList();
    } on DioException catch (e) {
      log('data is not fetched');
      return [];
    }
  }
}
