import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registro_animal_widget.dart' show RegistroAnimalWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistroAnimalModel extends FlutterFlowModel<RegistroAnimalWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ID widget.
  FocusNode? idFocusNode;
  TextEditingController? idController;
  String? Function(BuildContext, String?)? idControllerValidator;
  // State field(s) for Tipo widget.
  String? tipoValue;
  FormFieldController<String>? tipoValueController;
  // State field(s) for Raza widget.
  FocusNode? razaFocusNode;
  TextEditingController? razaController;
  String? Function(BuildContext, String?)? razaControllerValidator;
  // State field(s) for Fecha_Actual widget.
  FocusNode? fechaActualFocusNode;
  TextEditingController? fechaActualController;
  String? Function(BuildContext, String?)? fechaActualControllerValidator;
  // State field(s) for Genero widget.
  String? generoValue;
  FormFieldController<String>? generoValueController;
  // State field(s) for Peso widget.
  FocusNode? pesoFocusNode;
  TextEditingController? pesoController;
  String? Function(BuildContext, String?)? pesoControllerValidator;
  // State field(s) for Edad widget.
  FocusNode? edadFocusNode;
  TextEditingController? edadController;
  String? Function(BuildContext, String?)? edadControllerValidator;
  // State field(s) for Estado widget.
  String? estadoValue;
  FormFieldController<String>? estadoValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    idFocusNode?.dispose();
    idController?.dispose();

    razaFocusNode?.dispose();
    razaController?.dispose();

    fechaActualFocusNode?.dispose();
    fechaActualController?.dispose();

    pesoFocusNode?.dispose();
    pesoController?.dispose();

    edadFocusNode?.dispose();
    edadController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
