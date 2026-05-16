import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_2/counter_event.dart';
import 'package:flutter_bloc_2/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc.withState(super.initialState) {
    _registerEvents();
  }

  CounterBloc() : this.withState(CounterState.initial());

  void _registerEvents() {
    on<IncrementEvent>(
      (event, emit) => emit(state.copyWith(counter: state.counter + 1)),
    );
    on<DecrementEvent>(
      (event, emit) => emit(state.copyWith(counter: state.counter - 1)),
    );
  }
}
