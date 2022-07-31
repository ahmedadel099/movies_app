import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../error/failuer.dart';

abstract class BaseUseCases<T, Parameters> {
  Future<Either<Failure, T>> call(Parameters parameters);
}

class NoParameters extends Equatable{
  const NoParameters();
  @override
  List<Object?> get props => [];

}