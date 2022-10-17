import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moviesapp/core/servesices/service_locator.dart';
import 'package:moviesapp/tvs/presentation/components/on_the_air_componnennt.dart';
import 'package:moviesapp/tvs/presentation/components/popular_tvs_component.dart';
import 'package:moviesapp/tvs/presentation/components/top_rated_tvs_componnent.dart';
import 'package:moviesapp/tvs/presentation/controller/tvs_bloc.dart';

class TvsScreen extends StatelessWidget {
  const TvsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => sl<TvsBloc>()
        ..add(GetOnTheAirTvsEvent())
        ..add(GetPoplarTvsEvent())
        ..add(GetTopRatedTvsEvent()),
      child: Scaffold(
        body: SingleChildScrollView(
          key: const Key('tvsScrollView'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const OnTheAirComponent(),
              Container(
                margin: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular",
                      style: GoogleFonts.poppins(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.15,
                        color: Colors.white,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        /// TODO : NAVIGATION TO POPULAR SCREEN
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Text(
                              'See More',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16.0,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const PopularTvsComponent(),
              Container(
                margin: const EdgeInsets.fromLTRB(
                  16.0,
                  24.0,
                  16.0,
                  8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Rated",
                      style: GoogleFonts.poppins(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.15,
                        color: Colors.white,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        /// TODO : NAVIGATION TO Top Rated Movies Screen
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Text(
                              'See More',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16.0,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const TopRatedTvsComponent(),
              const SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
