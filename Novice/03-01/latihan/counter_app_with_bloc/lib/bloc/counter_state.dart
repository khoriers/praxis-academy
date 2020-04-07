part of 'counter_bloc.dart';

abstract class CounterState {
  const CounterState();
}

class CounterInitial extends CounterState {
  @override
  List<Object> get props => [];
}
