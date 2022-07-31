import 'package:flutter/material.dart';
import 'package:moviesapp/movies/presentation/screens/movies_screen.dart';

class TestScreem extends StatelessWidget {
  const TestScreem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
             return const MoviesScreen();
            }));
          },
          child: const Text(('Navigate')),
        ),
        
      ),
    );
  }
}
