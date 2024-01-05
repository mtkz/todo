part of 'todo_bloc.dart';

enum Status { loading, success, failure }

@freezed
class TodoState with _$TodoState {
  const factory TodoState({
    @Default(Status.loading) Status? status,
    @Default([]) List<Todo>? todos,
    int? selectedDate,
  }) = Initial;
}
