import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/domain/use_cases/featch_newset_books_use_case.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/book_entity.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.featchedNewsetBooksUseCase)
      : super(NewsetBooksInitial());

  final FeatchedNewsetBooksUseCase featchedNewsetBooksUseCase;

  Future<void> featchedNewsetBooks() async {
    emit(NewsetBooksLoading());
    var result = await featchedNewsetBooksUseCase.call();
    result.fold((failure) {
      emit(NewsetBooksFailure(failure.message));
    }, (books) {
      emit(NewsetBooksSuccess(books));
    });
  }
}
