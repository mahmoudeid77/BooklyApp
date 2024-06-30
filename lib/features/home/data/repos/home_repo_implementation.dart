
import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/errors/failure.dart';
import 'package:flutter_application_1/features/home/data/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/data/repos/home_repo.dart';

class HomeRepoImplementation implements HomeRepo{
  @override
  Future<Either<Failure, List<BookModel>>> FetchBestSellerBooks() {
    // TODO: implement FetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> FetchFeaturedBooks() {
    // TODO: implement FetchFeaturedBooks
    throw UnimplementedError();
  }
}