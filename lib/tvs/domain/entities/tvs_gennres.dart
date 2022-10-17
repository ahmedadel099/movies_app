import 'package:equatable/equatable.dart';

class TvsGenres extends Equatable {

  final String name;
  final int id;

  const TvsGenres({required this.name, required this.id});

  @override
  List<Object> get props => [name, id];
}