// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewTaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CategoryModel category) categorySelected,
    required TResult Function(DateTime dateTime) dateSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CategoryModel category)? categorySelected,
    TResult? Function(DateTime dateTime)? dateSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CategoryModel category)? categorySelected,
    TResult Function(DateTime dateTime)? dateSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_DateSelected value) dateSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_DateSelected value)? dateSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_DateSelected value)? dateSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewTaskEventCopyWith<$Res> {
  factory $NewTaskEventCopyWith(
          NewTaskEvent value, $Res Function(NewTaskEvent) then) =
      _$NewTaskEventCopyWithImpl<$Res, NewTaskEvent>;
}

/// @nodoc
class _$NewTaskEventCopyWithImpl<$Res, $Val extends NewTaskEvent>
    implements $NewTaskEventCopyWith<$Res> {
  _$NewTaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$NewTaskEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'NewTaskEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CategoryModel category) categorySelected,
    required TResult Function(DateTime dateTime) dateSelected,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CategoryModel category)? categorySelected,
    TResult? Function(DateTime dateTime)? dateSelected,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CategoryModel category)? categorySelected,
    TResult Function(DateTime dateTime)? dateSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_DateSelected value) dateSelected,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_DateSelected value)? dateSelected,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_DateSelected value)? dateSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements NewTaskEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_CategorySelectedCopyWith<$Res> {
  factory _$$_CategorySelectedCopyWith(
          _$_CategorySelected value, $Res Function(_$_CategorySelected) then) =
      __$$_CategorySelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryModel category});

  $CategoryModelCopyWith<$Res> get category;
}

/// @nodoc
class __$$_CategorySelectedCopyWithImpl<$Res>
    extends _$NewTaskEventCopyWithImpl<$Res, _$_CategorySelected>
    implements _$$_CategorySelectedCopyWith<$Res> {
  __$$_CategorySelectedCopyWithImpl(
      _$_CategorySelected _value, $Res Function(_$_CategorySelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$_CategorySelected(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res> get category {
    return $CategoryModelCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$_CategorySelected implements _CategorySelected {
  const _$_CategorySelected(this.category);

  @override
  final CategoryModel category;

  @override
  String toString() {
    return 'NewTaskEvent.categorySelected(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategorySelected &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategorySelectedCopyWith<_$_CategorySelected> get copyWith =>
      __$$_CategorySelectedCopyWithImpl<_$_CategorySelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CategoryModel category) categorySelected,
    required TResult Function(DateTime dateTime) dateSelected,
  }) {
    return categorySelected(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CategoryModel category)? categorySelected,
    TResult? Function(DateTime dateTime)? dateSelected,
  }) {
    return categorySelected?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CategoryModel category)? categorySelected,
    TResult Function(DateTime dateTime)? dateSelected,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_DateSelected value) dateSelected,
  }) {
    return categorySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_DateSelected value)? dateSelected,
  }) {
    return categorySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_DateSelected value)? dateSelected,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(this);
    }
    return orElse();
  }
}

abstract class _CategorySelected implements NewTaskEvent {
  const factory _CategorySelected(final CategoryModel category) =
      _$_CategorySelected;

  CategoryModel get category;
  @JsonKey(ignore: true)
  _$$_CategorySelectedCopyWith<_$_CategorySelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DateSelectedCopyWith<$Res> {
  factory _$$_DateSelectedCopyWith(
          _$_DateSelected value, $Res Function(_$_DateSelected) then) =
      __$$_DateSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime});
}

/// @nodoc
class __$$_DateSelectedCopyWithImpl<$Res>
    extends _$NewTaskEventCopyWithImpl<$Res, _$_DateSelected>
    implements _$$_DateSelectedCopyWith<$Res> {
  __$$_DateSelectedCopyWithImpl(
      _$_DateSelected _value, $Res Function(_$_DateSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
  }) {
    return _then(_$_DateSelected(
      null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_DateSelected implements _DateSelected {
  const _$_DateSelected(this.dateTime);

  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'NewTaskEvent.dateSelected(dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateSelected &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DateSelectedCopyWith<_$_DateSelected> get copyWith =>
      __$$_DateSelectedCopyWithImpl<_$_DateSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CategoryModel category) categorySelected,
    required TResult Function(DateTime dateTime) dateSelected,
  }) {
    return dateSelected(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CategoryModel category)? categorySelected,
    TResult? Function(DateTime dateTime)? dateSelected,
  }) {
    return dateSelected?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CategoryModel category)? categorySelected,
    TResult Function(DateTime dateTime)? dateSelected,
    required TResult orElse(),
  }) {
    if (dateSelected != null) {
      return dateSelected(dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_DateSelected value) dateSelected,
  }) {
    return dateSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_DateSelected value)? dateSelected,
  }) {
    return dateSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_DateSelected value)? dateSelected,
    required TResult orElse(),
  }) {
    if (dateSelected != null) {
      return dateSelected(this);
    }
    return orElse();
  }
}

abstract class _DateSelected implements NewTaskEvent {
  const factory _DateSelected(final DateTime dateTime) = _$_DateSelected;

  DateTime get dateTime;
  @JsonKey(ignore: true)
  _$$_DateSelectedCopyWith<_$_DateSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewTaskState {
  String get task => throw _privateConstructorUsedError;
  CategoryModel get category => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewTaskStateCopyWith<NewTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewTaskStateCopyWith<$Res> {
  factory $NewTaskStateCopyWith(
          NewTaskState value, $Res Function(NewTaskState) then) =
      _$NewTaskStateCopyWithImpl<$Res, NewTaskState>;
  @useResult
  $Res call({String task, CategoryModel category, DateTime date});

  $CategoryModelCopyWith<$Res> get category;
}

/// @nodoc
class _$NewTaskStateCopyWithImpl<$Res, $Val extends NewTaskState>
    implements $NewTaskStateCopyWith<$Res> {
  _$NewTaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? category = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res> get category {
    return $CategoryModelCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewTakStateCopyWith<$Res>
    implements $NewTaskStateCopyWith<$Res> {
  factory _$$_NewTakStateCopyWith(
          _$_NewTakState value, $Res Function(_$_NewTakState) then) =
      __$$_NewTakStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String task, CategoryModel category, DateTime date});

  @override
  $CategoryModelCopyWith<$Res> get category;
}

/// @nodoc
class __$$_NewTakStateCopyWithImpl<$Res>
    extends _$NewTaskStateCopyWithImpl<$Res, _$_NewTakState>
    implements _$$_NewTakStateCopyWith<$Res> {
  __$$_NewTakStateCopyWithImpl(
      _$_NewTakState _value, $Res Function(_$_NewTakState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? category = null,
    Object? date = null,
  }) {
    return _then(_$_NewTakState(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_NewTakState implements _NewTakState {
  const _$_NewTakState(
      {required this.task, required this.category, required this.date});

  @override
  final String task;
  @override
  final CategoryModel category;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'NewTaskState(task: $task, category: $category, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewTakState &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task, category, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewTakStateCopyWith<_$_NewTakState> get copyWith =>
      __$$_NewTakStateCopyWithImpl<_$_NewTakState>(this, _$identity);
}

abstract class _NewTakState implements NewTaskState {
  const factory _NewTakState(
      {required final String task,
      required final CategoryModel category,
      required final DateTime date}) = _$_NewTakState;

  @override
  String get task;
  @override
  CategoryModel get category;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$_NewTakStateCopyWith<_$_NewTakState> get copyWith =>
      throw _privateConstructorUsedError;
}
