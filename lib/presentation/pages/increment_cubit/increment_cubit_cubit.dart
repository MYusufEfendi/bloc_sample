import 'package:bloc/bloc.dart';
import 'package:bloc_sample/data/model/todo/todos.dart';
import 'package:flutter/material.dart';

import '../../../data/model/data.model.multi_todo/Multi_todo.dart';
import 'increment_cubit_state.dart';

class IncrementCubitCubit extends Cubit<IncrementCubitState> {
  IncrementCubitCubit() : super(IncrementCubitState().init());

  // emit untuk update UI

  void getTodos() async {
    List<dynamic> response = await state.sampleRequest.getSampleJson();
    for (var element in response) {
      state.myListTodo.add(Todos.fromJson(element));
    }
    emit(state.clone()..myListTodo.addAll(state.myListTodo));

    }

  void increment() {
    emit(state.clone()..counter = state.counter! + 1);
  }

  void decrement() {
    emit(state.clone()..counter = state.counter! - 1);
  }

  void onSwitch() {
    emit(state.clone()..isSwitch = !state.isSwitch);
  }
}
