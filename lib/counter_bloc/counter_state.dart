  
part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class AddedState extends CounterState {
  int value;
  AddedState(this.value);
}

class SubtractedState extends CounterState {
  int value;
  SubtractedState(this.value);
}