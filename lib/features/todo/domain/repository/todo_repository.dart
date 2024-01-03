import 'package:todo/features/todo/data/models/todo.dart';

abstract class TodoRepository{
  Future<List<Todo>> getTodos();
}