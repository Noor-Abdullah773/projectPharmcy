import 'package:dio/dio.dart';

class HttpHelper{/////////////////////singleton
  static HttpHelper? httpHelper;
  HttpHelper._();
  static HttpHelper get instance{
   if(httpHelper==null)
     httpHelper=HttpHelper._();
   return httpHelper!;
  }
  /////////////////////////////
  Dio d=Dio();
  Future<Response> getRequest({required String url})async{ //////// تقراء من api
    return await d.get(url);
  } 
  Future<Response> postRequest({required String url,required dynamic data,Options? options})async{ ///////// add into api
    return await d.post(url,data: data,options: options);
  }
}