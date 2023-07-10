import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../entities/book_entity.dart';

abstract class HomeRepo {

  // Ma function maintenant accept un Parametre avec une valeur par defaut 0
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks(
      {int pageNumber = 0});

  Future<Either<Failure, List<BookEntity>>> fetchNewsetBooks();
}
