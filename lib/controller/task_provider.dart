import 'package:flutter/material.dart';
import 'package:taskapp/model/taskmodel.dart';
import 'package:taskapp/service/task_service.dart';

enum DataState { loading, loaded, empty, error }

class UserProvider extends ChangeNotifier {
  
  final UserService userService = UserService();
  DataState state = DataState.loading;

  List<User> users = [];

  String errormessage = "";

  Future<void> fetchUsers() async {
    state = DataState.loading;
    notifyListeners();

    try {
      final data = await userService.getUser();

      if (data.isEmpty) {
        state = DataState.empty;
      } else {
        users = data;
        state = DataState.loaded;
      }
    } catch (e) {
      errormessage = e.toString();

      state = DataState.error;
    }

    notifyListeners();
  }
}
