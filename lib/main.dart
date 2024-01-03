import 'package:flutter/material.dart';
import 'package:todo/core/di/service_locator.dart';
import 'package:todo/features/todo/presentation/page/todo_page.dart';

void main() async{
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const TodoPage(),
    );
  }
}

