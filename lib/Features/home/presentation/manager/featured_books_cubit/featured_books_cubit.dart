import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/domain/use_cases/featch_featured_books_use_case.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/book_entity.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksInitial());

  final FetchFeaturedBooksUseCase featuredBooksUseCase;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await featuredBooksUseCase.call();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.message));
    }, (books){
      emit(FeaturedBooksSuccess(books));
    });
  }
}
