import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/permissions_util.dart';
import 'detalle_parto_widget.dart' show DetallePartoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetallePartoModel extends FlutterFlowModel<DetallePartoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Vivos widget.
  FocusNode? vivosFocusNode;
  TextEditingController? vivosController;
  String? Function(BuildContext, String?)? vivosControllerValidator;
  // State field(s) for Difuntos widget.
  FocusNode? difuntosFocusNode;
  TextEditingController? difuntosController;
  String? Function(BuildContext, String?)? difuntosControllerValidator;
  // State field(s) for Totales widget.
  final totalesKey = GlobalKey();
  FocusNode? totalesFocusNode;
  TextEditingController? totalesController;
  String? totalesSelectedOption;
  String? Function(BuildContext, String?)? totalesControllerValidator;
  // State field(s) for ID_Parto widget.
  FocusNode? iDPartoFocusNode;
  TextEditingController? iDPartoController;
  String? Function(BuildContext, String?)? iDPartoControllerValidator;
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
    vivosFocusNode?.dispose();
    vivosController?.dispose();

    difuntosFocusNode?.dispose();
    difuntosController?.dispose();

    totalesFocusNode?.dispose();

    iDPartoFocusNode?.dispose();
    iDPartoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
