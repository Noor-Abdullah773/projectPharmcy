class PharmacyDB{
  List <Map<String,dynamic>> allUsers=[
    {
      'userId':1,
      'name':"noor Abdallah Mosaibah",
      'userName':"noor",
      'password':"n123456",
      'Donation':[
        {'donate':{
          'name':'Metformin',
          'Category':'أمراض السكري',
          'shape':'حبوب',
          'Quantity':20,
          'images':['path1','path2'],
          'Expiry':'12-12-2024' 
          },
          'typeDonate':'medicine',
          },
         {'requast':{
          'name':'Amoxicillin',
          'Category':'أمراض العدوى البكتيرية',
          'shape':'حبوب',
          'Quantity':20,
          'images':['path1','path2'],
          'Expiry':'12-12-2024' 
          },
          'typeDonate':'medicine',
          'requastQuantity':5,
          },
      ],
    },
     {
      'userId':2,
      'name':"Maha Abdallah Alattas",
      'userName':"maha",
      'password':"m123456",
      'Donation':[
        {'donate':{
          'name':'Amoxicillin',
          'Category':'أمراض العدوى البكتيرية',
          'shape':'حبوب',
          'Quantity':20,
          'images':['path1','path2'],
          'Expiry':'12-12-2024' 
          },
          'typeDonate':'medicine',
          },
      ],
    }
  ];
  List <Map<String,dynamic>> select(){
    return allUsers;
  }

}