class UserAuthModel {
  String? userId;
  String? name;
  String? email;   
  UserAuthModel({required this.email,
   required this.name,
    required this.userId,});
  UserAuthModel.fromJson({required Map<String, dynamic> data}) {
    name = data['name'];
    email = data['email'];
    userId = data['userId'];
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'userId': userId,
    };
  }
}