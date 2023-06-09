import 'package:counter_bloc/counter_view.dart';
import 'package:counter_bloc/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: const CounterScreen(),
    ));
  }
}
