// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'todo_state.freezed.dart';
part 'todo_state.g.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState({
    required String title,
    @Default(false) bool archived,
  }) = _TodoState;

  factory TodoState.fromJson(Map<String, Object?> json)
      => _$TodoStateFromJson(json);
}