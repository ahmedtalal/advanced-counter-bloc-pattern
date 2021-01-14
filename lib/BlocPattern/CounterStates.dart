import 'package:equatable/equatable.dart';

abstract class CounterStates extends Equatable{
  final int number;
  const CounterStates(this.number) ;
  @override
  List<Object> get props => [number];

}

class InitialState extends CounterStates {
  const InitialState(int number) : super(number);
}

class IncrementState extends CounterStates{
  const IncrementState(int number) : super(number);
}

class DecrementState extends CounterStates {
  const DecrementState(int number) : super(number);
  
}