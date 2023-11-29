import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(2) {
    on<CounterIncEvent>(_onInc);
    on<CounterDecEvent>(_onDec);
  }

  _onInc(CounterIncEvent event, Emitter<int> emit) {
    emit(state +1);
  }
  _onDec(CounterDecEvent event, Emitter<int> emit) {
    if(state <1) return;
    
    emit(state - 1);
  }

}

abstract class CounterEvent {}

class CounterIncEvent extends CounterEvent {}

class CounterDecEvent extends CounterEvent {}
