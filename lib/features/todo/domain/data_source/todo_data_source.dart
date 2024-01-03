import 'package:todo/features/todo/data/models/todo.dart';

abstract class TodoDataSource {
  Future<List<Todo>> getTodos();
}
