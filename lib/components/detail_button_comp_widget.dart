import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetailButtonCompWidget extends StatefulWidget {
  const DetailButtonCompWidget({Key? key}) : super(key: key);

  @override
  _DetailButtonCompWidgetState createState() => _DetailButtonCompWidgetState();
}

class _DetailButtonCompWidgetState extends State<DetailButtonCompWidget> {
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FFButtonWidget(
      onPressed: () async {
        FFAppState().resultOfSayHi = 'yo';
      },
      text: 'Button',
      options: FFButtonOptions(
        width: 130,
        height: 40,
        color: FlutterFlowTheme.of(context).primaryColor,
        textStyle: FlutterFlowTheme.of(context).subtitle2.override(
              fontFamily: 'Poppins',
              color: Colors.white,
            ),
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
