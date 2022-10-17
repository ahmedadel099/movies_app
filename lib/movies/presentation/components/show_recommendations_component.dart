// import 'package:animate_do/animate_do.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shimmer/shimmer.dart';
//
// import '../../../core/network/api_connstannce.dart';
// import '../../../core/uutils/enums.dart';
// import '../controller/movie_details_bloc.dart';
// import '../screens/dummy (1).dart';
//
// class ShowRecommendations extends StatelessWidget {
//   const ShowRecommendations({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<MovieDetailsBloc, MoviesDetailsState>(
//       buildWhen: (previous, current) =>
//       previous.moviesRecommendationState != current.moviesRecommendationState,
//       builder: (context, state) {
//         switch(state.moviesRecommendationState) {
//           case RequestState.loading:
//             return const SizedBox(
//                 height: 400.0,
//                 child: Center(
//                   child: CircularProgressIndicator(),
//                 ));
//           case RequestState.loaded:
//             return  SliverGrid(
//               delegate: SliverChildBuilderDelegate(
//                     (context, index) {
//                   final recommendation = state.moviesRecommendation[index];
//                   return FadeInUp(
//                     from: 20,
//                     duration: const Duration(milliseconds: 500),
//                     child: ClipRRect(
//                       borderRadius: const BorderRadius.all(
//                           Radius.circular(4.0)),
//                       child: CachedNetworkImage(
//                         imageUrl: ApiConstance.imageUrl(
//                             recommendation.posterPath!),
//                         placeholder: (context, url) =>
//                             Shimmer.fromColors(
//                               baseColor: Colors.grey[850]!,
//                               highlightColor: Colors.grey[800]!,
//                               child: Container(
//                                 height: 170.0,
//                                 width: 120.0,
//                                 decoration: BoxDecoration(
//                                   color: Colors.black,
//                                   borderRadius: BorderRadius.circular(8.0),
//                                 ),
//                               ),
//                             ),
//                         errorWidget: (context, url, error) =>
//                         const Icon(Icons.error),
//                         height: 180.0,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   );
//                 },
//                 childCount: recommendationDummy.length,
//               ),
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 mainAxisSpacing: 8.0,
//                 crossAxisSpacing: 8.0,
//                 childAspectRatio: 0.7,
//                 crossAxisCount: 3,
//               ),
//             );
//
//           case RequestState.error:
//             return SizedBox(
//               height: 400.0,
//               child: Center(
//                 child: Text(state.moviesRecommendationMessage),
//               ),
//             );
//         }
//       },
//     );
//   }  }
//
