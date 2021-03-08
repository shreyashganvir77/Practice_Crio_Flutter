import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService{
  final FirebaseAuth auth;
  AuthService({this.auth});

  Stream<User> get onAuthStateChange => auth.authStateChanges();

  Future<String> signIn(String email, String password) async {
    try{
      dynamic result = await auth.createUserWithEmailAndPassword(email: email, password: password);
      User user = result;
    }on FirebaseException catch(e){
      print(e);
    }
    return "Signed In Successfully";
  }
  Future<String> signOut() async {
    await auth.signOut();
    return "Signed Out Successfully";
  }
  Future<String> googleSI() async {
    try{
      final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final GoogleAuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );
      dynamic result = await auth.signInWithCredential(credential);
      return "Signed In Successfully";
    }catch(e){
      return e;
    }
  }
}