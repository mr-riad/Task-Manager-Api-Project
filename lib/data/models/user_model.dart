class UserModel{
  late String id;
  late String email;
  late String firstName;
  late String lastName;
  late String mobile;

  String get fullName {
    return '$firstName $lastName';
  }

  UserModel.fromJson(Map<String, dynamic> jsonData){
    id = jsonData['_id'];
    email = jsonData['_email'];
    firstName = jsonData['_firstName'];
    lastName = jsonData['_lastName'];
    mobile = jsonData['_mobile'];
  }

  Map<String, dynamic> toJson(){
    return{
      '_id':id,
      '_email': email,
      'firstName':firstName,
      'lastName':lastName,
      'mobile':mobile
    };
  }
}