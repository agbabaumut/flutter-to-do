import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_course_app/counter_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = context.read<CounterProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(counterProvider.counter.toString(),
                style: TextStyle(fontSize: 30)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Provider.of<CounterProvider>(context, listen: false)
                    .increment();
              },
              child: Text('Increment'),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<CounterProvider>(context, listen: false)
                    .decrement();
              },
              child: Text('Decrement'),
            ),
          ],
        ),
      ),
    );
  }
}
