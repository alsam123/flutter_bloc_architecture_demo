part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class AddButtonClickedEvent extends CounterEvent{}

class SubtractButtonClickedEvent extends CounterEvent{}