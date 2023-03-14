class UsersDetails{
  String? displayName;
  String? email;
  String? photoURL;
  UsersDetails({this.displayName,this.email,this.photoURL});

  UsersDetails.fromJson(Map<String,dynamic>json){
    displayName =json["displayName"];
    photoURL =json["photoURL"];
    email =json["email"];
  }

   Map<String,dynamic> tojson() {
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data['displayName'] = this.displayName;
    data['email'] = this.email;
    data['photoURL'] = this.photoURL;
    return data;
  }
}
