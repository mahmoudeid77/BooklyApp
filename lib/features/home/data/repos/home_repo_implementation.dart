
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/utilis/api_service.dart';
import 'package:flutter_application_1/errors/failure.dart';
import 'package:flutter_application_1/features/home/data/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/data/repos/home_repo.dart';

class HomeRepoImplementation implements HomeRepo{
  final ApiService apiService ;

  HomeRepoImplementation({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> FetchBestSellerBooks() async{

    //volumes?Filtering=free-ebooks&Sorting=newest &q=computer science

   try {
     var data = await apiService.get(endpoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
     List<BookModel> books =[];
     for (var item in data['items']) {

       books.add(BookModel.fromJson(item));
     }

     return right(books);
     
   } catch (e) {
    if(e is DioError){
      return left(ServerFailure.fromDioError(e));
    }
    return left(ServerFailure(e.toString()));
     
   }
    
    
   
  }

  @override
  Future<Either<Failure, List<BookModel>>> FetchFeaturedBooks() {
    // TODO: implement FetchFeaturedBooks
    throw UnimplementedError();
  }
}