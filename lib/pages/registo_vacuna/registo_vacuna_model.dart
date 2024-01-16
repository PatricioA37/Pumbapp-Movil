import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'registo_vacuna_widget.dart' show RegistoVacunaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistoVacunaModel extends FlutterFlowModel<RegistoVacunaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ID_Vac widget.
  FocusNode? iDVacFocusNode;
  TextEditingController? iDVacController;
  String? Function(BuildContext, String?)? iDVacControllerValidator;
  // State field(s) for Nombre_Vac widget.
  FocusNode? nombreVacFocusNode;
  TextEditingController? nombreVacController;
  String? Function(BuildContext, String?)? nombreVacControllerValidator;
  // State field(s) for Descripcion widget.
  FocusNode? descripcionFocusNode;
  TextEditingController? descripcionController;
  String? Function(BuildContext, String?)? descripcionControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    iDVacFocusNode?.dispose();
    iDVacController?.dispose();

    nombreVacFocusNode?.dispose();
    nombreVacController?.dispose();

    descripcionFocusNode?.dispose();
    descripcionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
