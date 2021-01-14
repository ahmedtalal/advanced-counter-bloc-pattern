import 'package:equatable/equatable.dart';


class CounterEvents extends Equatable {
  @override
  List<Object> get props => [];
}

class IncrementEvent extends CounterEvents{

}

class DecrementEvent extends CounterEvents {
}