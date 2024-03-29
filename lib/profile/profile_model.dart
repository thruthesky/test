import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/user_avatar_big_widget.dart';
import '/components/user_avatar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for UserAvatarBig component.
  late UserAvatarBigModel userAvatarBigModel;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for displayName widget.
  FocusNode? displayNameFocusNode;
  TextEditingController? displayNameController;
  String? Function(BuildContext, String?)? displayNameControllerValidator;
  // Model for UserAvatar component.
  late UserAvatarModel userAvatarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    userAvatarBigModel = createModel(context, () => UserAvatarBigModel());
    userAvatarModel = createModel(context, () => UserAvatarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    userAvatarBigModel.dispose();
    displayNameFocusNode?.dispose();
    displayNameController?.dispose();

    userAvatarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
