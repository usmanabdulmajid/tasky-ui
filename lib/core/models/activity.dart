import 'package:test_app/core/uitls/enums.dart';

class Activity {
  final String imageUrl;
  final String content;
  final String date;
  final String duration;
  final TaskState state;
  Activity({
    required this.imageUrl,
    required this.content,
    required this.date,
    required this.duration,
    required this.state,
  });

  Activity copyWith({
    String? imageUrl,
    String? content,
    String? date,
    String? duration,
    TaskState? state,
  }) {
    return Activity(
      imageUrl: imageUrl ?? this.imageUrl,
      content: content ?? this.content,
      date: date ?? this.date,
      duration: duration ?? this.duration,
      state: state ?? this.state,
    );
  }

  @override
  String toString() {
    return 'Activity(imageUrl: $imageUrl, content: $content, date: $date, duration: $duration, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Activity &&
        other.imageUrl == imageUrl &&
        other.content == content &&
        other.date == date &&
        other.duration == duration &&
        other.state == state;
  }

  @override
  int get hashCode {
    return imageUrl.hashCode ^
        content.hashCode ^
        date.hashCode ^
        duration.hashCode ^
        state.hashCode;
  }
}

List<Activity> get peopleList => [
      Activity(
        imageUrl: '',
        content: 'Chemical Reaction/ Letter to god',
        date: '01',
        duration: 'Duration 24 hours',
        state: TaskState.pending,
      ),
      Activity(
        imageUrl: '',
        content: 'Rise of nationalism in Europe/ Dust of snow/ Fire and ice',
        date: '02',
        duration: 'Duration 24 hours',
        state: TaskState.pending,
      ),
      Activity(
        imageUrl: '',
        content: 'Rise of nationalism in Europe/ Dust of snow/ Fire and ice',
        date: '03',
        duration: 'Duration 24 hours',
        state: TaskState.pending,
      ),
      Activity(
        imageUrl: '',
        content: 'Rise of nationalism in Europe/ Dust of snow/ Fire and ice',
        date: '04',
        duration: 'Duration 24 hours',
        state: TaskState.pending,
      ),
    ];
