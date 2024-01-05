import 'dart:io';
import 'package:todo/core/network/http.dart';
import 'package:todo/features/todo/data/models/todo.dart';
import 'package:todo/features/todo/domain/data_source/todo_data_source.dart';

class TodoDataSourceImpl extends TodoDataSource {
  @override
  Future<List<Todo>> getTodos() async {

    await Future.delayed(const Duration(seconds: 5));
    return [
      const Todo(
        time: "2021-11-20T10:09:42.157",
        text: "Design team meeting",
        color: "E41D25",
      ),
      const Todo(
        time: "2021-11-20T10:09:42.157",
        text: "Making wireframe",
        color: "FFC107",
      ),
      const Todo(
        time: "2021-11-20T10:09:42.157",
        text: "Check email",
        color: "096BFF",
      ),
      const Todo(
        time: "2021-11-20T10:09:42.157",
        text: "Develop team meeting",
        color: "40A573",
      ),
    ];
    // try {
    //   final response = await dioInstance.get(
    //     'edb59dac-61d0-48d8-aec6-567dc9f7262e',
    //   );

    //   if (response.statusCode == HttpStatus.ok) {
    //     List<dynamic> data = response.data['data'];

    //     return data.map((item) => Todo.fromJson(item)).toList();
    //   } else {
    //     throw Exception('Failed to load todos');
    //   }
    // } catch (error) {
    //   throw Exception('Error: $error');
    // }
  }
}
