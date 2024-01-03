// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_date.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoDate {
  String get day => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoDateCopyWith<TodoDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoDateCopyWith<$Res> {
  factory $TodoDateCopyWith(TodoDate value, $Res Function(TodoDate) then) =
      _$TodoDateCopyWithImpl<$Res, TodoDate>;
  @useResult
  $Res call({String day, String date, bool isActive});
}

/// @nodoc
class _$TodoDateCopyWithImpl<$Res, $Val extends TodoDate>
    implements $TodoDateCopyWith<$Res> {
  _$TodoDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? date = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoDateImplCopyWith<$Res>
    implements $TodoDateCopyWith<$Res> {
  factory _$$TodoDateImplCopyWith(
          _$TodoDateImpl value, $Res Function(_$TodoDateImpl) then) =
      __$$TodoDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String day, String date, bool isActive});
}

/// @nodoc
class __$$TodoDateImplCopyWithImpl<$Res>
    extends _$TodoDateCopyWithImpl<$Res, _$TodoDateImpl>
    implements _$$TodoDateImplCopyWith<$Res> {
  __$$TodoDateImplCopyWithImpl(
      _$TodoDateImpl _value, $Res Function(_$TodoDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? date = null,
    Object? isActive = null,
  }) {
    return _then(_$TodoDateImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TodoDateImpl implements _TodoDate {
  const _$TodoDateImpl(
      {required this.day, required this.date, this.isActive = false});

  @override
  final String day;
  @override
  final String date;
  @override
  @JsonKey()
  final bool isActive;

  @override
  String toString() {
    return 'TodoDate(day: $day, date: $date, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoDateImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, day, date, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoDateImplCopyWith<_$TodoDateImpl> get copyWith =>
      __$$TodoDateImplCopyWithImpl<_$TodoDateImpl>(this, _$identity);
}

abstract class _TodoDate implements TodoDate {
  const factory _TodoDate(
      {required final String day,
      required final String date,
      final bool isActive}) = _$TodoDateImpl;

  @override
  String get day;
  @override
  String get date;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$TodoDateImplCopyWith<_$TodoDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
