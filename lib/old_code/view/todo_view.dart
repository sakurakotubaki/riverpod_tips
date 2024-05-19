import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tips/old_code/usecase/todo_notifier.dart';

class TodoView extends ConsumerWidget {
  const TodoView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoList = ref.watch(todoProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: const Text('TodoS'),
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