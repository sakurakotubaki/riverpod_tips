import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tips/old_code/entity/todo_state.dart';

// todo_notifier.dart
final todoProvider = StateNotifierProvider<TodoNotifier, List<TodoState>>((ref) {
  return TodoNotifier();
});

class TodoNotifier extends StateNotifier<List<TodoState>> {
  // Inject dummy data using dependency injection
  TodoNotifier(): super([
    const TodoState(title: 'milk'),
    const TodoState(title: 'eggs'),
    const TodoState(title: 'bread'),
  ]);
  
  // Toggle the archived state of a todo
  void toggle(int index) {
    TodoState updatedTodo = state[index].copyWith(archived: !state[index].archived);
    state = [
      ...state.sublist(0, index),
      updatedTodo,
      ...state.sublist(index + 1),
    ];
  }

  // Toggle the archived state of a todo
  void forToggle(int index) {
    List<TodoState> updatedState = [];
    for (int i = 0; i < state.length; i++) {
      if (i == index) {
        updatedState.add(state[i].copyWith(archived: !state[i].archived));
      } else {
        updatedState.add(state[i]);
      }
    }
    state = updatedState;
  }
}