import 'package:counter_bloc/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, state) {
          return Center(
            child: Text(
              '$state',
              style: const TextStyle(fontSize: 30),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<CounterCubit>().add();
          },
          child: const Icon(Icons.add)),
    );
  }
}
