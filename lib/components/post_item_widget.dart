import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostItemWidget extends StatefulWidget {
  const PostItemWidget({
    Key? key,
    this.post,
  }) : super(key: key);

  final PostsRecord? post;

  @override
  _PostItemWidgetState createState() => _PostItemWidgetState();
}

class _PostItemWidgetState extends State<PostItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectionArea(
              child: Text(
            widget.post!.title!,
            style: FlutterFlowTheme.of(context).bodyText1,
          )),
          SelectionArea(
              child: Text(
            widget.post!.category!,
            style: FlutterFlowTheme.of(context).bodyText1,
          )),
        ],
      ),
    );
  }
}
