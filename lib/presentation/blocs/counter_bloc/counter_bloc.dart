import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<CounterIncreased>(_onCounterIncreased);
    on<CounterReset>(_onCounterReset);
  }

  void _onCounterIncreased(CounterIncreased event, Emitter<CounterState> emit) {
    emit(
      state.copyWith(
        counter: state.counter + event.value,
        transactionCount: state.transactionCount + 1,
      ),
    );
  }

  void _onCounterReset(CounterReset event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: 0));
  }

  /// Disparar eventos desde el Bloc
  void increaseBy([int value = 1]) {
    add(CounterIncreased(value));
  }

  void resetCounter() {
    add(CounterReset());
  }
}
