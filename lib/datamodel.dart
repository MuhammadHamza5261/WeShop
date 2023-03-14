import 'dart:convert';

datamodel datamodelFromJson(String str) => datamodelFromJson(jsonDecode(str));
String datamodelToJson(datamodel data) => json.encode(data.toJson());

class datamodel{
  datamodel({
    required this.name,
    required this.email,
    required this.id,
    required this.password,
    required this.createdAt,
});
   String name;
   String email;
   String id;
   String password;
   String createdAt;

   factory datamodel.fromJson(Map<String, dynamic>json)=> datamodel(
     name: json["name"],
     email: json["email"],
     id: json["id"],
     password: json["password"],
     createdAt: json["createdAt"],
   );
   Map<String,dynamic> toJson() =>{
     "name": name,
     "email": email,
     "id": id,
     "password": password,
     "createdAt": createdAt,

   };






}