class ValidationHelper{
 String? checkEmail(String? x){
    if(x==null || x.isEmpty)

       return "لا يمكن ان يكون فارغاً";
    else if(RegExp(r'^[a-zA-Z\s]+$').hasMatch(x))
      return null;
      else 
       return "يجب الا يحتوي ارقام او رموز";
       
  }

 String? checkPassword(String? x){
    if(x==null || x.isEmpty)
       return "لا يمكن ان يكون فارغاً";
    
    else if(x.length>=8)
    {
        if(RegExp(r'^(?=.*[a-zA-Z])(?=.*\d).+$').hasMatch(x))
          return null;
       else 
     return "يجب ان يحتوي على ارقام او رموز واحرف";
    }
    else 
    return "يجب ان لا يقل على 8 رموز";
    
       
  }
}