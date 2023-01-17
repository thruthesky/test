import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KakaotalkLoginWidget extends StatefulWidget {
  const KakaotalkLoginWidget({Key? key}) : super(key: key);

  @override
  _KakaotalkLoginWidgetState createState() => _KakaotalkLoginWidgetState();
}

class _KakaotalkLoginWidgetState extends State<KakaotalkLoginWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Page Title',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: FlutterFlowWebView(
              url:
                  'https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=d4b43fbf2599b19b50ef43b3524f0165&redirect_uri=https%3A%2F%2Fasia-northeast3-withcenter-project.cloudfunctions.net%2FkakaoLogin',
              bypass: false,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              verticalScroll: false,
              horizontalScroll: false,
            ),
          ),
        ),
      ),
    );
  }
}
