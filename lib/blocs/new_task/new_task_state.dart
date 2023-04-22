part of 'new_task_bloc.dart';

@freezed
class NewTaskState with _$NewTaskState {
  const factory NewTaskState({
    required String task,
    required CategoryModel category,
    required DateTime date,
  }) = _NewTakState;
  factory NewTaskState.initial({
    String task = '',
    CategoryModel category = const CategoryModel(),
    DateTime? date,
  }) =>
      NewTaskState(
        task: task,
        category: category,
        date: date ?? DateTime.now(),
      );
}
