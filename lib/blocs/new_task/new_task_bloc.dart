import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/models/models.dart';

part 'new_task_event.dart';
part 'new_task_state.dart';
part 'new_task_bloc.freezed.dart';

class NewTaskBloc extends Bloc<NewTaskEvent, NewTaskState> {
  NewTaskBloc() : super(NewTaskState.initial()) {
    on<NewTaskEvent>(_onNewTask);
  }

  FutureOr<void> _onNewTask(
    NewTaskEvent event,
    Emitter emit,
  ) async {
    event.map(
      started: (value) {},
      categorySelected: (value) {
        emit(state.copyWith(category: value.category));
      },
      dateSelected: (value) {
        emit(
          state.copyWith(date: value.dateTime),
        );
      },
      addTask: (value) {},
    );
  }
}
