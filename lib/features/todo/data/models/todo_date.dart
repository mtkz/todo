import 'package:freezed_annotation/freezed_annotation.dart';


part 'todo_date.freezed.dart';

@freezed
class TodoDate with _$TodoDate {
  const factory TodoDate({
    required String day,
    required String date,
    @Default(false) bool isActive,
  }) = _TodoDate;
}
