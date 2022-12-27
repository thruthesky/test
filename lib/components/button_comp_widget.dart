import '../components/detail_button_comp_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ButtonCompWidget extends StatefulWidget {
  const ButtonCompWidget({Key? key}) : super(key: key);

  @override
  _ButtonCompWidgetState createState() => _ButtonCompWidgetState();
}

class _ButtonCompWidgetState extends State<ButtonCompWidget> {
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Text(
              FFAppState().resultOfSayHi,
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
          ),
        ),
        DetailButtonCompWidget(),
      ],
    );
  }
}
