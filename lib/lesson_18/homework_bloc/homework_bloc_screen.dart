import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learning_jorney/lesson_18/homework_bloc/bloc/counter_bloc.dart';
import 'package:flutter_learning_jorney/lesson_18/homework_bloc/bloc/counter_event.dart';

class HomeworkBlocScreen extends StatelessWidget {
  const HomeworkBlocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomeworkBlocScreen')),
      body: BlocBuilder<CounterBloc, int>(
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
                      onPressed: () {
                        context.read<CounterBloc>().add(CounterIncrement());
                      },
                      tooltip: 'Increment',
                      child: const Icon(Icons.add),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(CounterDecrement());
                      },
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
