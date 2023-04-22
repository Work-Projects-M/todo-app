// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_nav_bar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BottomNavBarEvent {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) pageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? pageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? pageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageChanged value) pageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageChanged value)? pageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageChanged value)? pageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavBarEventCopyWith<BottomNavBarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavBarEventCopyWith<$Res> {
  factory $BottomNavBarEventCopyWith(
          BottomNavBarEvent value, $Res Function(BottomNavBarEvent) then) =
      _$BottomNavBarEventCopyWithImpl<$Res, BottomNavBarEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$BottomNavBarEventCopyWithImpl<$Res, $Val extends BottomNavBarEvent>
    implements $BottomNavBarEventCopyWith<$Res> {
  _$BottomNavBarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PageChangedCopyWith<$Res>
    implements $BottomNavBarEventCopyWith<$Res> {
  factory _$$_PageChangedCopyWith(
          _$_PageChanged value, $Res Function(_$_PageChanged) then) =
      __$$_PageChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_PageChangedCopyWithImpl<$Res>
    extends _$BottomNavBarEventCopyWithImpl<$Res, _$_PageChanged>
    implements _$$_PageChangedCopyWith<$Res> {
  __$$_PageChangedCopyWithImpl(
      _$_PageChanged _value, $Res Function(_$_PageChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_PageChanged(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PageChanged implements _PageChanged {
  const _$_PageChanged(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'BottomNavBarEvent.pageChanged(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageChanged &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PageChangedCopyWith<_$_PageChanged> get copyWith =>
      __$$_PageChangedCopyWithImpl<_$_PageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) pageChanged,
  }) {
    return pageChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? pageChanged,
  }) {
    return pageChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? pageChanged,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageChanged value) pageChanged,
  }) {
    return pageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageChanged value)? pageChanged,
  }) {
    return pageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageChanged value)? pageChanged,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(this);
    }
    return orElse();
  }
}

abstract class _PageChanged implements BottomNavBarEvent {
  const factory _PageChanged(final int index) = _$_PageChanged;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_PageChangedCopyWith<_$_PageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BottomNavBarState {
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavBarStateCopyWith<BottomNavBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavBarStateCopyWith<$Res> {
  factory $BottomNavBarStateCopyWith(
          BottomNavBarState value, $Res Function(BottomNavBarState) then) =
      _$BottomNavBarStateCopyWithImpl<$Res, BottomNavBarState>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$BottomNavBarStateCopyWithImpl<$Res, $Val extends BottomNavBarState>
    implements $BottomNavBarStateCopyWith<$Res> {
  _$BottomNavBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BottomNavBarStateCopyWith<$Res>
    implements $BottomNavBarStateCopyWith<$Res> {
  factory _$$_BottomNavBarStateCopyWith(_$_BottomNavBarState value,
          $Res Function(_$_BottomNavBarState) then) =
      __$$_BottomNavBarStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_BottomNavBarStateCopyWithImpl<$Res>
    extends _$BottomNavBarStateCopyWithImpl<$Res, _$_BottomNavBarState>
    implements _$$_BottomNavBarStateCopyWith<$Res> {
  __$$_BottomNavBarStateCopyWithImpl(
      _$_BottomNavBarState _value, $Res Function(_$_BottomNavBarState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_BottomNavBarState(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BottomNavBarState implements _BottomNavBarState {
  const _$_BottomNavBarState({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'BottomNavBarState(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BottomNavBarState &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BottomNavBarStateCopyWith<_$_BottomNavBarState> get copyWith =>
      __$$_BottomNavBarStateCopyWithImpl<_$_BottomNavBarState>(
          this, _$identity);
}

abstract class _BottomNavBarState implements BottomNavBarState {
  const factory _BottomNavBarState({required final int index}) =
      _$_BottomNavBarState;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_BottomNavBarStateCopyWith<_$_BottomNavBarState> get copyWith =>
      throw _privateConstructorUsedError;
}
