// import 'package:flutter/material.dart';
// import 'package:moviesapp/movies/presentation/screens/movies_screen.dart';
// import 'package:moviesapp/tvs/presentation/screens/tvs_screenn.dart';
//
// class NavigationScreen extends StatefulWidget {
//   const NavigationScreen({Key? key}) : super(key: key);
//
//   @override
//   State<NavigationScreen> createState() => _NavigationScreenState();
// }
//
// class _NavigationScreenState extends State<NavigationScreen> {
//   int currentIndex = 0;
//  final  screens = [
//     // const NavigationScreen(),
//      const MoviesScreen(),
//      const TvsScreen(),
//
//   ];
//
//   void onTap(int index) {
//     setState(() {
//       currentIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) =>
//      Scaffold(
//       body: IndexedStack(
//         index: currentIndex,
//         children: screens,
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         elevation: 0,
//         onTap: onTap,
//         currentIndex: currentIndex,
//         selectedItemColor: Colors.white,
//         unselectedItemColor: Colors.black12,
//
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.movie),
//             label: 'Movies',
//
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.tv),
//             label: 'Tv',
//           ),
//         ],
//       ),
//     );
//   }
//
