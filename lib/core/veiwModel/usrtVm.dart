import 'package:dio/dio.dart';

import '../../helper/apiExption.dart';
import '../../helper/http_helper.dart';
import '../../helper/storage_helper.dart';
import '../constant/api_url.dart';
import '../models/user.dart';


class UserVm{
  Future<String?> register(User user,String url)async{
   try{
     HttpHelper http=HttpHelper.instance;
    Response res=await http.postRequest(url:url, data:user.authData() );
       User u=User.fromJson(res.data);
       print(u.email);
       print(u.password);
       // saveUser(u);
      return "secssed";
     
   }on DioException catch(x){
   return ApiException.handleException(x);
   
   }
   catch(e){
    print(e);
    return "anuther exception";
   }
  }
  Future<String?> login(User user,String url)async{
   try{
     HttpHelper http=HttpHelper.instance;
    Response res=await http.postRequest(url:url, data:user.loginData() );
       User u=User.fromJson(res.data);
         print(u.email);
       print(u.password);
        //saveUser(u);
      return "secssed";
     
   }on DioException catch(x){
   return ApiException.handleException(x);
   
   }
   catch(e){
    print(e);
    return "anuther exception";
   }
  }

   saveUser(User u){
    StorageHelper storageHelper=StorageHelper.instance;
    
    storageHelper.writeKey("token", u.token!);
    storageHelper.writeKey("email", u.email!);
  }
  
} 