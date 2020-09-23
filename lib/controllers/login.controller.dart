import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:todo_app_mobx/user.dart';

class LoginController {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future login() async {
    // Autenticando com o google
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    // Recuperando as credenciais do usuario no google
    final AuthCredential credential = GoogleAuthProvider.getCredential(
      idToken: googleAuth.idToken,
      accessToken: googleAuth.accessToken,
    );

    // Autenticando no firebase
    final FirebaseUser firebaseUser =
        (await _firebaseAuth.signInWithCredential(credential)).user;

    var token = await firebaseUser.getIdToken();

    user.name = firebaseUser.displayName;
    user.email = firebaseUser.email;
    user.picture = firebaseUser.photoUrl;
    user.token = token.token;
  }

  Future logout() async {
    await FirebaseAuth.instance.signOut();
    user = new IUser();
  }
}
