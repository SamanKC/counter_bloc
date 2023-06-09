part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {
  final List a;

  CounterInitial(this.a);
}

class CounterLoading extends CounterState {}

class CounterSuccess extends CounterState {}

class CounterFailure extends CounterState {}

class CounterAddValue extends CounterState {}
