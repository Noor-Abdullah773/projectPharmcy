class User {
  int? id;
  String? name;
  String? email;
  String? password;
  String? password_confirmation;
  String?city;
  String? phone;
  String? avatar;
  String? bio;
  String? token;
  String? role;

  User(
      {this.id,
      this.name,
      this.email,
      this.password,
      this.password_confirmation,
      this.city,
      this.phone,
      this.avatar,
      this.bio,
      this.token,
      this.role});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    password_confirmation = json['password_confirmation'];
    city = json['city'];
    phone = json['phone'];
    avatar = json['avatar'];
    bio = json['bio'];
    token = json['token'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password']=this.password;
    data['password_confirmation']=this.password_confirmation;
    data['city'] = this.city;
    data['phone'] = this.phone;
    data['avatar'] = this.avatar;
    data['bio'] = this.bio;
    data['token'] = this.token;
    data['role'] = this.role;
    return data;
  }

   Map<String,String> authData(){ ///////////////////// لماذا تم عملها هنا
    Map<String,String> registerInInfo=Map();
    registerInInfo['name']=name!;
    registerInInfo['email']=email!;
    registerInInfo['password']=password!;
    registerInInfo['password_confirmation']=password_confirmation!;
    return  registerInInfo;
  }
  Map<String,String> loginData(){ ///////////////////// لماذا تم عملها هنا
    Map<String,String> registerInInfo=Map();
     registerInInfo['password']=password!;
    registerInInfo['email']=email!;
   
    return  registerInInfo;
  }
}