// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:url_launcher/url_launcher.dart';

Future launchKakaoLogin(String? tempDocumentId) async {
  // Add your function code here!
  final url =
      'https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=d4b43fbf2599b19b50ef43b3524f0165&redirect_uri=https%3A%2F%2Fasia-northeast3-withcenter-project.cloudfunctions.net%2FkakaoLogin&state=$tempDocumentId';
  print(url);
  var uri = Uri.parse(url);
  try {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } catch (e) {
    throw 'Could not launch $uri: $e';
  }
}
