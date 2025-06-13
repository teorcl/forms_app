import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    // on<CounterEvent>((event, emit) {}); Esto es un ejemplo de cómo manejar eventos en Bloc, CounterEvent es la interfaz, todo el que herede de CounterEvent se puede manejar aquí.
    // on<CounterIncreased>((event, emit) {
    //   emit(
    //     state.copyWith(
    //       counter: state.counter + event.value,
    //       transactionCount: state.transactionCount + 1,
    //     ),
    //   );
    // });
    on<CounterIncreased>(_onCounterIncreased);
  }

  void _onCounterIncreased(CounterIncreased event, Emitter<CounterState> emit) {
    emit(
      state.copyWith(
        counter: state.counter + event.value,
        transactionCount: state.transactionCount + 1,
      ),
    );
  }
}
