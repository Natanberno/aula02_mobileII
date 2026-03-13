import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/todos/data/repositories/todo_repository_impl.dart';
import 'features/todos/domain/repositories/todo_repository.dart';
import 'features/todos/presentation/viewmodels/todo_viewmodel.dart';
import 'ui/app_root.dart';

void main() {
  final TodoRepository todoRepository = TodoRepositoryImpl();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TodoViewModel(todoRepository)),
      ],
      child: const AppRoot(),
    ),
  );
}
