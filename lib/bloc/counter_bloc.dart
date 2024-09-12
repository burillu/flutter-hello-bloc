import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterBlocEvent, CounterBlocState> {
  CounterBloc() : super(CounterBlocStateValue(24)) {
    on<CounterBlocEventIncrease>((event, emit) {
      final CounterBlocStateValue actualState =
          (state as CounterBlocStateValue);
      final int newState = actualState.value + 1;

      emit(CounterBlocStateValue(newState));
    });
    on<CounterBlocEventDecrease>(
      (event, emit) {
        final actualState = (state as CounterBlocStateValue);
        final newState = actualState.value - 1;
        emit(CounterBlocStateValue(newState));
      },
    );
  }
}

abstract class CounterBlocEvent {}

class CounterBlocEventIncrease extends CounterBlocEvent {}

class CounterBlocEventDecrease extends CounterBlocEvent {}

abstract class CounterBlocState {}

class CounterBlocStateValue extends CounterBlocState {
  final int value;

  CounterBlocStateValue(this.value);
}
