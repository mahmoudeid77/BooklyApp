import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/errors/failure.dart';
import 'package:flutter_application_1/features/home/data/book_model/book_model.dart';

abstract class HomeRepo {
  Future <Either<Failure,List<BookModel>>> FetchBestSellerBooks();
    Future <Either<Failure,List<BookModel>>> FetchFeaturedBooks();
}