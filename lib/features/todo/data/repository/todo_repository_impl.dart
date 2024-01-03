import 'package:todo/features/todo/data/data_source/todo_data_source_impl.dart';
import 'package:todo/features/todo/data/models/todo.dart';
import 'package:todo/features/todo/domain/repository/todo_repository.dart';

class TodoRepositoryImpl extends TodoRepository {
  final TodoDataSourceImpl todoDataSourceImpl = TodoDataSourceImpl();

  @override
  Future<List<Todo>> getTodos() => todoDataSourceImpl.getTodos();
}
