import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviesapp/core/network/api_connstannce.dart';
import 'package:moviesapp/movies/presentation/controller/movies_bloc.dart';
import 'package:moviesapp/movies/presentation/controller/movies_state.dart';
import 'package:moviesapp/movies/presentation/screens/movie_detail_screen%20.dart';
import 'package:moviesapp/tvs/presentation/controller/tvs_bloc.dart';
import 'package:moviesapp/tvs/presentation/screens/tvs_detail_screen%20.dart';
import 'package:shimmer/shimmer.dart';
import '../../../core/uutils/enums.dart';

class TopRatedTvsComponent extends StatelessWidget {
  const TopRatedTvsComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TvsBloc, TvsState>(
      buildWhen: (previous, current) =>
      previous.topRatedTvsState != current.topRatedTvsState,
      builder: (context, state){
        switch (state.topRatedTvsState) {
        case RequestState.loading:
          return const SizedBox(
              height: 170.0,
              child: Center(
                child: CircularProgressIndicator(),
              ));
        case RequestState.loaded:
          return FadeIn(
            duration: const Duration(milliseconds: 500),
            child: SizedBox(
              height: 170.0,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                itemCount: state.topRatedTvs.length,
                itemBuilder: (context, index) {
                  final tv = state.topRatedTvs[index];
                  return Container(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                TvsDetailScreen(id : tv.id),
                          ),
                        );                      },
                      child: ClipRRect(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(8.0)),
                        child: CachedNetworkImage(
                          width: 120.0,
                          fit: BoxFit.cover,
                          imageUrl: ApiConstance.imageUrl(tv.posterPath!),
                          placeholder: (context, url) =>
                              Shimmer.fromColors(
                                baseColor: Colors.grey[850]!,
                                highlightColor: Colors.grey[800]!,
                                child: Container(
                                  height: 170.0,
                                  width: 120.0,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                          errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        case RequestState.error:
          return SizedBox(
            height: 170.0,
            child: Center(
              child: Text(state.topRatedTvsMessage),
            ),
          );
      }

      },
    );
  }
}
