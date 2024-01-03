import 'package:todo/features/todo/data/models/todo.dart';
import 'package:todo/features/todo/domain/data_source/todo_data_source.dart';
import 'package:todo/features/todo/domain/repository/todo_repository.dart';

class TodoRepositoryImpl extends TodoRepository {
  final TodoDataSource todoDataSource;

  TodoRepositoryImpl({required this.todoDataSource});

  @override
  Future<List<Todo>> getTodos() => todoDataSource.getTodos();
}
