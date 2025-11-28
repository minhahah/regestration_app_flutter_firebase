import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<void> register({
  required String username,
  required String email,
  required String password,
  required String confirmpassword,
  required BuildContext context,
}) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("user added successfully")));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}
Future<void> login({
  required String email,
  required String password, required BuildContext context,
})async{
  try{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("login successfully")));
  }
  catch(e){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(e.toString())));
  }
}
Future<void> forgot({
  required String email,required BuildContext context,

})async{
  try{
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("check your inbox")));
  }
  catch(e){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("e.toString")));
  }
}
