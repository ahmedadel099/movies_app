import 'package:flutter/material.dart';

class AllPopularMoviesScreen extends StatelessWidget {
  const AllPopularMoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Popular Movies')),
      ),
      body: movieCard(),
    );
  }
}

Widget movieCard() {
  return Container(
    height: 230.0,
    color: Colors.grey.shade300,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          'https://img.fruugo.com/product/1/49/99800491_max.jpg',
          height: 250,
          width: 150,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 10.0,),
        Expanded(
          child: Column(
          children: [
              Row(
                children: const [
                  Text('title',
                    style: TextStyle(fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              ),
            ],
          ),
        ),
        
      ],
    ),
  );
}
