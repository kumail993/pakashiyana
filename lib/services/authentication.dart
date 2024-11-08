
import 'package:pakashiyana/exports.dart';  // Import the UserModel

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Sign-Up Function with UserModel
  Future<bool> signUp({
    required String email,
    required String password,
    required String username,
    required int phoneNo,
  }) async {
    try {
      // Create user with email and password
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = userCredential.user;

      // Save user data in Firestore using UserModel
      if (user != null) {
        UserModel newUser = UserModel(
          uid: user.uid,
          userEmail: email,
          userName: username,
          phoneNo: phoneNo,
          favoriteList: [],  // Initialize with an empty list if no favorites
        );

        await _firestore.collection('users').doc(user.uid).set(newUser.toMap());
        log("User signed up and data saved in Firestore");
        return true;
      }
      else{
        log("User is null");
        return false;
      }
    } on FirebaseAuthException catch (e) {
      log("Sign-Up Error: ${e.message}");
      return false;
    }
  }
  Future<bool> login({required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } on FirebaseAuthException catch (e) {
      log("Login Error: ${e.message}");
      return false;
    }
  }
}
