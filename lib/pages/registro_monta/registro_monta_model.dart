import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '../../custom_code/actions/index.dart' as actions;
import '/flutter_flow/permissions_util.dart';
import 'registro_monta_widget.dart' show RegistroMontaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistroMontaModel extends FlutterFlowModel<RegistroMontaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ID_Marrana widget.
  FocusNode? iDMarranaFocusNode;
  TextEditingController? iDMarranaController;
  String? Function(BuildContext, String?)? iDMarranaControllerValidator;
  // State field(s) for ID_Verraco widget.
  FocusNode? iDVerracoFocusNode;
  TextEditingController? iDVerracoController;
  String? Function(BuildContext, String?)? iDVerracoControllerValidator;
  // State field(s) for Fecha_monta widget.
  FocusNode? fechaMontaFocusNode;
  TextEditingController? fechaMontaController;
  String? Function(BuildContext, String?)? fechaMontaControllerValidator;
  // Stores action output result for [Custom Action - newCustomAction] action in Button widget.
  String? parto;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    iDMarranaFocusNode?.dispose();
    iDMarranaController?.dispose();

    iDVerracoFocusNode?.dispose();
    iDVerracoController?.dispose();

    fechaMontaFocusNode?.dispose();
    fechaMontaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
