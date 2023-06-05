import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/domain/repos/home_repos.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/use_cases/use_case.dart';
import 'package:dartz/dartz.dart';

class FeatchedNewsetBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FeatchedNewsetBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async {
    return await homeRepo.fetchNewsetBooks();
  }
}
