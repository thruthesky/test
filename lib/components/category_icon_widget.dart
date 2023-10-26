import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'category_icon_model.dart';
export 'category_icon_model.dart';

class CategoryIconWidget extends StatefulWidget {
  const CategoryIconWidget({
    Key? key,
    String? category,
  })  : this.category = category ?? 'city',
        super(key: key);

  final String category;

  @override
  _CategoryIconWidgetState createState() => _CategoryIconWidgetState();
}

class _CategoryIconWidgetState extends State<CategoryIconWidget> {
  late CategoryIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryIconModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32.0,
      height: 32.0,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          if (widget.category == 'city')
            Icon(
              Icons.location_city_outlined,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 32.0,
            ),
          if (widget.category == 'countryside')
            Icon(
              Icons.spa_outlined,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 32.0,
            ),
          if (widget.category == 'beach')
            Icon(
              Icons.beach_access_outlined,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 32.0,
            ),
          if (widget.category == 'mountain')
            Icon(
              Icons.landscape_sharp,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 32.0,
            ),
          if (widget.category == 'cottage')
            Icon(
              Icons.bungalow_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 32.0,
            ),
          if (widget.category == 'amenity')
            Icon(
              Icons.pool,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 32.0,
            ),
          if (widget.category == 'etc')
            Icon(
              Icons.tag_outlined,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 32.0,
            ),
        ],
      ),
    );
  }
}
