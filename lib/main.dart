import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_course_app/counter_provider.dart';
import 'package:udemy_course_app/home_screen.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => CounterProvider(),
          ),
        ],
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomeScreen(),
    );
  }
}
