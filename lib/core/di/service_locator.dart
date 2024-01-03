import 'package:get_it/get_it.dart';
import 'package:todo/features/todo/data/data_source/todo_data_source_impl.dart';
import 'package:todo/features/todo/data/repository/todo_repository_impl.dart';
import 'package:todo/features/todo/domain/data_source/todo_data_source.dart';
import 'package:todo/features/todo/domain/repository/todo_repository.dart';
import 'package:todo/features/todo/presentation/bloc/todo_bloc.dart';

final GetIt serviceLocator = GetIt.I;

Future<void> setupLocator() async {
  serviceLocator
      .registerLazySingleton<TodoDataSource>(() => TodoDataSourceImpl());

  serviceLocator.registerLazySingleton<TodoRepository>(
      () => TodoRepositoryImpl(todoDataSource: serviceLocator()));

  serviceLocator.registerFactory<TodoBloc>(
    () => TodoBloc(
      todoRepository: serviceLocator(),
    ),
  );
}
