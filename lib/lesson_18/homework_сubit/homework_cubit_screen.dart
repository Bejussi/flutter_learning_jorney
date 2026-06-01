import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learning_jorney/lesson_18/homework_%D1%81ubit/cubit/counter_cubit.dart';

class HomeworkCubitScreen extends StatelessWidget {
  const HomeworkCubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CounterCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text('HomeworkCubitScreen')),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('You have pushed the button this many times:'),
                Text(
                  '$state',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FloatingActionButton(
                      onPressed: cubit.increment,
                      tooltip: 'Increment',
                      child: const Icon(Icons.add),
                    ),
                    FloatingActionButton(
                      onPressed: cubit.decrement,
                      tooltip: 'Decrement',
                      child: const Icon(Icons.remove),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
