import 'package:advanced_bloc_counter/BlocPattern/CounterBloc.dart';
import 'package:advanced_bloc_counter/BlocPattern/CounterEvents.dart';
import 'package:advanced_bloc_counter/BlocPattern/CounterStates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CounterBloc _bloc ;

  @override
  void initState() {
    _bloc = BlocProvider.of<CounterBloc>(context) ; 
    super.initState();
  }
  
  @override
  void dispose() {
    _bloc.close() ;
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("counter"),),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton(
              color: Colors.blue,
              child: Icon(Icons.add , size: 20,color: Colors.white,),
              onPressed: (){
                // increment code is here >>>
                _bloc.add(IncrementEvent()) ;
              }
            ) ,

            BlocBuilder<CounterBloc,CounterStates>(
              builder: (context , state){
                if(state is InitialState){
                  return Text("${state.number}") ;
                }else if(state is IncrementState){
                  return Text("${state.number}") ;
                }else if(state is DecrementState){
                  return Text("${state.number}") ;
                }
              }
            ),

            RaisedButton(
              color: Colors.red,
              child: Icon(Icons.remove , size: 20,color: Colors.white,),
              onPressed: (){
                // decrement code is here >>>> 
                _bloc.add(DecrementEvent()) ;
                
              },
            ),
          ],
        ),
      ),
    );
  }
}