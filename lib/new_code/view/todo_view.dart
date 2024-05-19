import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tips/old_code/usecase/todo_notifier.dart';

class TodoGenerateView extends ConsumerWidget {
  const TodoGenerateView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoList = ref.watch(todoProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Riverpod2.0'),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          final todo = todoList[index];
          return ListTile(
            title: Text(todo.title),
            trailing: Checkbox(
              value: todo.archived,
              onChanged: (_) {
                ref.read(todoProvider.notifier).toggle(index);
                // ref.read(todoProvider.notifier).forToggle(index);
              },
            ),
          );
        },
      ),
    );
  }
}