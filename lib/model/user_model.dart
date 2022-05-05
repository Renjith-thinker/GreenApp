class UserModel {
  String? uid;
  String? email;
  String? firstName;
  String? secondName;
  UserModel({this.uid, this.email, this.firstName, this.secondName});
//retrive data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      firstName: map['firstName'],
      secondName: map['secondName'],
    );
  }

  Map<String, dynamic> toMap() {
    return Map();
  }
}
