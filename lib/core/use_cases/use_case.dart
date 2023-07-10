import 'package:dartz/dartz.dart';

import '../errors/failure.dart';

abstract class UseCase<Type, Param> {
  // the square brackets [] indicate that the Param param parameter is optional.
  Future<Either<Failure, Type>> call([Param param]);
}

class NoParam {}
