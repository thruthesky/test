// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';

Future loginWithCustomAuthToken(
    BuildContext context, String tempDocumentId) async {
  // Add your function code here!
  final doc = FirebaseFirestore.instance.collection('temp').doc(tempDocumentId);
  final snapshot = await doc.get();
  final data = snapshot.data();
  print(data);

  try {
    final userCredential =
        await FirebaseAuth.instance.signInWithCustomToken(data!['token']);
    print("Sign-in successful.");
    context.pushNamed('Home');
  } on FirebaseAuthException catch (e) {
    switch (e.code) {
      case "invalid-custom-token":
        print("The supplied token is not a Firebase custom auth token.");
        break;
      case "custom-token-mismatch":
        print("The supplied token is for a different Firebase project.");
        break;
      default:
        print("Unkown error.");
    }
  }
}
