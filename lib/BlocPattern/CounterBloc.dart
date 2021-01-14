import 'package:advanced_bloc_counter/BlocPattern/CounterEvents.dart';
import 'package:advanced_bloc_counter/BlocPattern/CounterStates.dart';
import 'package:bloc/bloc.dart';

class CounterBloc extends Bloc<CounterEvents,CounterStates>{
  int counter =0 ;
  CounterBloc(CounterStates initialState) : super(initialState);

  @override
  Stream<CounterStates> mapEventToState(CounterEvents event) async* {
    if(event is IncrementEvent) {
      yield IncrementState(counter++);
    }else if(event is DecrementEvent){
      if(counter != 0){
        yield DecrementState(counter--) ;
      }
      
    }
  }

}