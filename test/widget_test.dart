import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

import 'package:todo_refatoracao_baguncado/features/todos/data/repositories/todo_repository_impl.dart';
import 'package:todo_refatoracao_baguncado/features/todos/domain/repositories/todo_repository.dart';
import 'package:todo_refatoracao_baguncado/features/todos/presentation/viewmodels/todo_viewmodel.dart';
import 'package:todo_refatoracao_baguncado/ui/app_root.dart';

void main() {
  testWidgets('App carrega tela de TODOs', (WidgetTester tester) async {
    final TodoRepository todoRepository = TodoRepositoryImpl();

    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => TodoViewModel(todoRepository),
        child: const AppRoot(),
      ),
    );

    expect(find.text('Todos'), findsOneWidget);
  });
}
