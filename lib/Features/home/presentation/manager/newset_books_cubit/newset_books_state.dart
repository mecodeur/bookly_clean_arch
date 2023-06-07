part of 'newset_books_cubit.dart';

@immutable
abstract class NewsetBooksState {}

class NewsetBooksInitial extends NewsetBooksState {}

class NewsetBooksLoading extends NewsetBooksState {}

class NewsetBooksFailure extends NewsetBooksState {
  final String errMessage;

  NewsetBooksFailure(this.errMessage);
}

class NewsetBooksSuccess extends NewsetBooksState {
  final List<BookEntity> books;

  NewsetBooksSuccess(this.books);
}
