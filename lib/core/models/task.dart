import 'dart:convert';

import 'package:test_app/core/utils/enums.dart';

class Task {
  final String imageUrl;
  final String content;
  final DateTime dateTime;
  final String duration;
  final TaskState state;
  Task({
    required this.imageUrl,
    required this.content,
    required this.dateTime,
    required this.duration,
    required this.state,
  });

  Task copyWith({
    String? imageUrl,
    String? content,
    DateTime? dateTime,
    String? duration,
    TaskState? state,
  }) {
    return Task(
      imageUrl: imageUrl ?? this.imageUrl,
      content: content ?? this.content,
      dateTime: dateTime ?? this.dateTime,
      duration: duration ?? this.duration,
      state: state ?? this.state,
    );
  }

  @override
  String toString() {
    return 'Task(imageUrl: $imageUrl, content: $content, dateTime: $dateTime, duration: $duration, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Task &&
        other.imageUrl == imageUrl &&
        other.content == content &&
        other.dateTime == dateTime &&
        other.duration == duration &&
        other.state == state;
  }

  @override
  int get hashCode {
    return imageUrl.hashCode ^
        content.hashCode ^
        dateTime.hashCode ^
        duration.hashCode ^
        state.hashCode;
  }
}

List<Task> get taskList => [
      Task(
        imageUrl: '',
        content:
            'People often overlook the power of simple walking. It increases cardiovascular and pulmonary',
        dateTime: DateTime.now(),
        duration: '01:16 mins you Save',
        state: TaskState.done,
      ),
      Task(
        imageUrl: '',
        content:
            'Optimize your schedule for this approach by blocking out time at the start of every day...',
        dateTime: DateTime.now().subtract(const Duration(days: 1)),
        duration: '03:56 mins left',
        state: TaskState.pending,
      ),
      Task(
        imageUrl: '',
        content:
            'Optimize your schedule for this approach by blocking out time at the start of every day...',
        dateTime: DateTime.now().subtract(const Duration(days: 2)),
        duration: '03:56 mins left',
        state: TaskState.pending,
      ),
    ];
