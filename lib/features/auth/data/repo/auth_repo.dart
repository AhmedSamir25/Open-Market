import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_cloud_firestore/firebase_cloud_firestore.dart';
import 'package:open_market/core/function/set_user_id.dart';
import 'package:open_market/features/auth/data/model/user_auth_model.dart';

class AuthRepository {
   SetUserId? saveUserId;
 //Sign up 
  Future<void> registerWithEmail(
      String email, String password, String name) async {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
        SetUserId().setUserId(userId:userCredential.user!.uid );
    await sendUserDataToFirebase(
      userId: userCredential.user!.uid,
      name: name,
      email: email,
    );
  }

//Sign in
  Future<void> signIn(String email, String password) async {
    UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email, password: password);
        await SetUserId().setUserId(userId:userCredential.user!.uid );
  }

  Future<void> signOut() async{
    await FirebaseAuth.instance.signOut();
  }

  Future<void> resetPassword(String email) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }

  Future<void> sendUserDataToFirebase(
      {required String userId,
      required String name,
      required String email}) async {
    UserAuthModel userModel = UserAuthModel(email: email, name: name, userId: userId,);
    await FirebaseFirestore.instance
        .collection('User')
        .doc(userId)
        .set(userModel.toJson());
  }
}
