class CounterState {
  final int counter;

  CounterState._({required this.counter});

  factory CounterState.initial() {
    return CounterState._(counter: 0);
  }

  CounterState copyWith({int? counter}) {
    return CounterState._(counter: counter ?? this.counter);
  }
}
