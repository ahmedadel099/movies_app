import 'package:flutter/material.dart';
import 'package:moviesapp/movies/presentation/screens/movies_screen.dart';
import 'core/servesices/service_locator.dart';

void main() {
  ServiceLocator().init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies App',
      theme: ThemeData.dark(
      ).copyWith(
        scaffoldBackgroundColor:   Colors.grey.shade900,
      ),
      home: const MoviesScreen(),
    );
  }
}

