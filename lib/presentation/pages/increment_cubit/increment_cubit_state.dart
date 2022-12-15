import 'package:bloc_sample/data/model/data.model.multi_todo/Multi_todo.dart';
import 'package:bloc_sample/data/repository/sample_url.dart';

import '../../../data/model/todo/todos.dart';

class IncrementCubitState {
  // Berisis parameter variable

  int? counter = 0;
  bool isSwitch = false;
  final SampleRequest sampleRequest = SampleRequest();
  List<Todos> myListTodo = [];

  IncrementCubitState init() {
    return IncrementCubitState();
  }

  IncrementCubitState clone() {
    return IncrementCubitState();
  }
}
