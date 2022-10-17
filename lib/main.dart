import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviesapp/core/navigation/navigation_cubit.dart';
import 'package:moviesapp/core/navigation/root_screen.dart';
import 'package:moviesapp/movies/presentation/screens/all_popular_moviees_screen.dart';
import 'package:moviesapp/movies/presentation/screens/movies_screen.dart';
import 'package:moviesapp/tvs/presentation/screens/tvs_screenn.dart';
import 'core/servesices/service_locator.dart';

void main() {
  ServiceLocator().init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NavigationCubit>(
      create: (context) => NavigationCubit(),
      child: MaterialApp(
        title: 'Movies App',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.grey.shade900,
        ),
        home:   RootScreen(),
      ),
    );
  }
}
