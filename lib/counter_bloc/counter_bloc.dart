import 'dart:async';


import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInitial());

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    
    if (event is AddButtonClickedEvent) {
      
      counter++;
      yield AddedState(counter);
      
    }
    if (event is SubtractButtonClickedEvent) {
      
      counter--;
      yield SubtractedState(counter);
      
    }
  }
}
