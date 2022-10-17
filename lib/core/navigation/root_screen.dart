
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviesapp/core/navigation/nav_bar_items.dart';
import 'package:moviesapp/core/navigation/navigation_cubit.dart';
import 'package:moviesapp/movies/presentation/screens/movies_screen.dart';

import '../../tvs/presentation/screens/tvs_screenn.dart';

class RootScreen extends StatefulWidget {


  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          return BottomNavigationBar(
            currentIndex: state.index,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.movie,
                ),
                label: 'Movies',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.tv,
                ),
                label: 'Tv',
              ),
            ],
            onTap: (index) {
              if (index == 0) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.movies);
              } else if (index == 1) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.tvs);
              }
            },
          );
        },
      ),
      body: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
            if (state.navbarItem == NavbarItem.movies) {
              return const MoviesScreen();
            } else if (state.navbarItem == NavbarItem.tvs) {
              return const TvsScreen();
            }
            return Container();
          }),
    );
  }
}