part of 'bottom_nav_bar_bloc.dart';

@freezed
class BottomNavBarState with _$BottomNavBarState {
  const factory BottomNavBarState({required int index}) = _BottomNavBarState;
  factory BottomNavBarState.home() => const BottomNavBarState(index: 0);
  factory BottomNavBarState.task() => const BottomNavBarState(index: 1);
}
