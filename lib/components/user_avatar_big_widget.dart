import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_avatar_big_model.dart';
export 'user_avatar_big_model.dart';

class UserAvatarBigWidget extends StatefulWidget {
  const UserAvatarBigWidget({
    Key? key,
    double? size,
    required this.onTap,
  })  : this.size = size ?? 160.0,
        super(key: key);

  final double size;
  final Future<dynamic> Function()? onTap;

  @override
  _UserAvatarBigWidgetState createState() => _UserAvatarBigWidgetState();
}

class _UserAvatarBigWidgetState extends State<UserAvatarBigWidget> {
  late UserAvatarBigModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserAvatarBigModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        context.pushNamed('Profile');
      },
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Stack(
          children: [
            if (currentUserPhoto != '')
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(6.0, 6.0, 6.0, 6.0),
                child: AuthUserStreamWidget(
                  builder: (context) => ClipRRect(
                    borderRadius: BorderRadius.circular(52.0),
                    child: Image.network(
                      'https://picsum.photos/seed/374/600',
                      width: widget.size,
                      height: widget.size,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            if (currentUserPhoto == '')
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(6.0, 6.0, 6.0, 6.0),
                child: AuthUserStreamWidget(
                  builder: (context) => Container(
                    width: widget.size,
                    height: widget.size,
                    decoration: BoxDecoration(
                      color: Color(0x7C6E6E6E),
                      borderRadius: BorderRadius.circular(52.0),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Icon(
                        Icons.person_sharp,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 64.0,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
