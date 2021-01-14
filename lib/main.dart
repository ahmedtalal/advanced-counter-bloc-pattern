import 'package:advanced_bloc_counter/BlocPattern/CounterBloc.dart';
import 'package:advanced_bloc_counter/BlocPattern/CounterStates.dart';
import 'package:advanced_bloc_counter/Pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

main(List<String> args) {
  runApp(AdavancedCounterBloc()) ;
}

class AdavancedCounterBloc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: BlocProvider(
        create: (context) => CounterBloc(InitialState(0)),
        child: Home(),
      )
    );
  }
}