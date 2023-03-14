import 'package:flutter/cupertino.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:weshop/main.dart';
import 'package:weshop/userModel.dart';
class loginController with ChangeNotifier
{
  UsersDetails? usersDetails;
  allowUserToSignInWithFB()async{
    var result = await FacebookAuth.i.login(
      permissions: ["public_profile", "email"],
    );
    if(result.status == LoginStatus.success)
      {
        final requestData = await FacebookAuth.i.getUserData(
            fields: "email,name,picture.type(large)",
        );
        this.usersDetails = new UsersDetails(
          displayName: requestData["name"],
          email: requestData["email"],
          photoURL: requestData["picture"]["data"]["url"] ?? " ",
        );
        notifyListeners();
      }
  }
  allowUserToSignOut() async
  {
   await FacebookAuth.i.logOut();
   usersDetails = null;
   notifyListeners();
  }
}