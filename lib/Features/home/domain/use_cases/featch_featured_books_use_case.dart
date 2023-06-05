import 'package:bookly/Features/home/domain/repos/home_repos.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entities/book_entity.dart';

class FetchFeaturedBooksUseCase{

  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks(){
    // here we can add check permission for example
    return homeRepo.fetchFeaturedBooks();
  }
}