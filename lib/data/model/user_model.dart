
class UserModel{

  late String uid;
  late String name;
  late String password;
  late String email;
  late String image;
  late String phone;
  late String idNumber;
  late bool isAdmin;


  UserModel({
    required this.phone,
    required this.name,
    required this.email,
    required this.password,
    required this.image,
    required this.idNumber,
    required this.uid,
    required this.isAdmin
});

  Map<String,dynamic> toMap(){
     return {
       'uid':uid,
       'name':name,
       'email':email,
       'idNumber':idNumber,
       'password':password,
       'image':image,
       'isAdmin':isAdmin,
       'phone':phone,


     };
  }

}