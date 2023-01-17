// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class MyChromeSafariBrowser extends ChromeSafariBrowser {
  @override
  void onOpened() {
    print("ChromeSafari browser opened");
  }

  @override
  void onCompletedInitialLoad() {
    print("ChromeSafari browser initial load completed");
  }

  @override
  void onClosed() {
    print("ChromeSafari browser closed");
  }
}

class KakaoLoginChromeSafariBrowser extends StatefulWidget {
  const KakaoLoginChromeSafariBrowser({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  final ChromeSafariBrowser browser = new MyChromeSafariBrowser();

  @override
  _KakaoLoginChromeSafariBrowserState createState() =>
      _KakaoLoginChromeSafariBrowserState();
}

class _KakaoLoginChromeSafariBrowserState
    extends State<KakaoLoginChromeSafariBrowser> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    InAppWebViewController.setWebContentsDebuggingEnabled(true);
    widget.browser.addMenuItem(new ChromeSafariBrowserMenuItem(
        id: 1,
        label: 'Custom item menu 1',
        action: (url, title) {
          print('Custom item menu 1 clicked!');
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChromeSafariBrowser Example'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              await widget.browser.open(
                  url: WebUri("https://flutter.dev/"),
                  settings: ChromeSafariBrowserSettings(
                      shareState: CustomTabsShareState.SHARE_STATE_OFF,
                      barCollapsingEnabled: true));
            },
            child: Text("Open Chrome Safari Browser")),
      ),
    );
  }
}
