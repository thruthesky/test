import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GenderOptionBottomSheetWidget extends StatefulWidget {
  const GenderOptionBottomSheetWidget({Key? key}) : super(key: key);

  @override
  _GenderOptionBottomSheetWidgetState createState() =>
      _GenderOptionBottomSheetWidgetState();
}

class _GenderOptionBottomSheetWidgetState
    extends State<GenderOptionBottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          FFButtonWidget(
            onPressed: () {
              print('Button pressed ...');
            },
            text: '전체',
            options: FFButtonOptions(
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
          ),
          FFButtonWidget(
            onPressed: () {
              print('Button pressed ...');
            },
            text: '남',
            options: FFButtonOptions(
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
          ),
          FFButtonWidget(
            onPressed: () {
              print('Button pressed ...');
            },
            text: '여',
            options: FFButtonOptions(
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
          ),
          FFButtonWidget(
            onPressed: () {
              print('Button pressed ...');
            },
            text: '취소',
            options: FFButtonOptions(
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
          ),
        ],
      ),
    );
  }
}
