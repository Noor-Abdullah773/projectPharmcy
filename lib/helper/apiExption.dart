import 'package:dio/dio.dart';
class ApiException{
  static handleException(DioException error){
    switch(error.type) 
   {
    case DioException.badResponse:{
      return "bad response"; 
    }
    case DioException.connectionError:{
      return "connectionError";
    }
    case DioException.connectionTimeout:{
      return "connectionTimeout";
    }
    default:{
      return "unknown exception";
    }
   }

  }
}