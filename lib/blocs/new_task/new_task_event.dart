part of 'new_task_bloc.dart';

@freezed
class NewTaskEvent with _$NewTaskEvent {
  const factory NewTaskEvent.started() = _Started;
  const factory NewTaskEvent.categorySelected(CategoryModel category) =
      _CategorySelected;
  const factory NewTaskEvent.dateSelected(DateTime dateTime) = _DateSelected;
}
