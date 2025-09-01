import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'registro_animal_model.dart';
export 'registro_animal_model.dart';

class RegistroAnimalWidget extends StatefulWidget {
  const RegistroAnimalWidget({Key? key}) : super(key: key);

  @override
  _RegistroAnimalWidgetState createState() => _RegistroAnimalWidgetState();
}

class _RegistroAnimalWidgetState extends State<RegistroAnimalWidget>
    with TickerProviderStateMixin {
  late RegistroAnimalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 90.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 90.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 90.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 90.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegistroAnimalModel());

    _model.idController ??= TextEditingController();
    _model.idFocusNode ??= FocusNode();

    _model.razaController ??= TextEditingController();
    _model.razaFocusNode ??= FocusNode();

    _model.fechaActualController ??= TextEditingController();
    _model.fechaActualFocusNode ??= FocusNode();

    _model.pesoController ??= TextEditingController();
    _model.pesoFocusNode ??= FocusNode();

    _model.edadController ??= TextEditingController();
    _model.edadFocusNode ??= FocusNode();

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    print('Usuario actual: ${currentUserReference?.id}');

    return StreamBuilder<List<RegistroAnimalRecord>>(
        stream: queryRegistroAnimalRecord(
      queryBuilder: (registroAnimalRecord) {
        print(
            'Consultando registros para usuario: ${currentUserReference?.id}');
        return registroAnimalRecord.where(
          'iDProduc',
          isEqualTo: currentUserReference,
        );
      },
    ), builder: (context, snapshot) {
      if (!snapshot.hasData) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          ),
        );
      }
      List<RegistroAnimalRecord> registroAnimalRegistroAnimalRecordList =
          snapshot.data!;
      // Agregamos esto para usar la variable y evitar warnings
      print(
          'Cantidad de registros en lista: ${registroAnimalRegistroAnimalRecordList.length}');

      // Aplicamos un tema personalizado para asegurar que el texto sea negro
      return Theme(
          data: Theme.of(context).copyWith(
            textTheme: Theme.of(context).textTheme.apply(
                  bodyColor: Colors.black,
                  displayColor: Colors.black,
                ),
          ),
          child: GestureDetector(
            onTap: () => _model.unfocusNode.canRequestFocus
                ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                : FocusScope.of(context).unfocus(),
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primary,
                automaticallyImplyLeading: false,
                leading: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.pop();
                  },
                ),
                title: Text(
                  'Registro Animal',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                        fontSize: 22.0,
                      ),
                ),
                actions: [],
                centerTitle: true,
                elevation: 2.0,
              ),
              body: SafeArea(
                top: true,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  FlutterFlowTheme.of(context).primary,
                                  Color(0xFFF5F5F5)
                                ],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(0.0, -1.0),
                                end: AlignmentDirectional(0, 1.0),
                              ),
                              shape: BoxShape.rectangle,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                // Selector de tipo de animal con diseño responsivo tipo Grid
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 16.0, 16.0),
                                  child: Container(
                                    width: double.infinity,
                                    constraints:
                                        BoxConstraints(maxWidth: 570.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Seleccione tipo de animal',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium,
                                        ),
                                        SizedBox(height: 16.0),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            // Verraco
                                            _buildTipoButton(
                                              context,
                                              label: 'Añadir Verraco',
                                              color: Color(0xE00000FF),
                                              onTap: () async {
                                                // Obtener todos los registros y filtrar por usuario
                                                final allRecords =
                                                    await queryRegistroAnimalRecordOnce();
                                                // Filtrar manualmente por el usuario actual
                                                final userRecords = allRecords
                                                    .where((record) =>
                                                        record.iDProduc ==
                                                        currentUserReference)
                                                    .toList();
                                                print(
                                                    'Registros del usuario ${currentUserReference?.id}: ${userRecords.length}');
                                                final nextId =
                                                    getNextId(userRecords);
                                                print(
                                                    'Próximo ID asignado para usuario ${currentUserReference?.id}: $nextId');

                                                setState(() {
                                                  _model.idController?.text =
                                                      nextId.toString();
                                                  _model.tipoValueController
                                                      ?.value = 'Verraco';
                                                  _model.tipoValue = 'Verraco';
                                                  _model.fechaActualController
                                                      ?.text = getToday();
                                                  _model.generoValueController
                                                      ?.value = 'Macho';
                                                  _model.generoValue = 'Macho';
                                                });
                                              },
                                            ),

                                            // Marrana
                                            _buildTipoButton(
                                              context,
                                              label: 'Añadir Marrana',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              onTap: () async {
                                                // Obtener todos los registros y filtrar por usuario
                                                final allRecords =
                                                    await queryRegistroAnimalRecordOnce();
                                                // Filtrar manualmente por el usuario actual
                                                final userRecords = allRecords
                                                    .where((record) =>
                                                        record.iDProduc ==
                                                        currentUserReference)
                                                    .toList();
                                                print(
                                                    'Registros del usuario ${currentUserReference?.id}: ${userRecords.length}');
                                                final nextId =
                                                    getNextId(userRecords);
                                                print(
                                                    'Próximo ID asignado para usuario ${currentUserReference?.id}: $nextId');

                                                setState(() {
                                                  _model.idController?.text =
                                                      nextId.toString();
                                                  _model.tipoValueController
                                                      ?.value = 'Marrana';
                                                  _model.tipoValue = 'Marrana';
                                                  _model.fechaActualController
                                                      ?.text = getToday();
                                                  _model.generoValueController
                                                      ?.value = 'Hembra';
                                                  _model.generoValue = 'Hembra';
                                                });
                                              },
                                            ),

                                            // Lechon
                                            _buildTipoButton(
                                              context,
                                              label: 'Añadir Lechon',
                                              color: Color(0xFF00A4FF),
                                              onTap: () async {
                                                // Obtener todos los registros y filtrar por usuario
                                                final allRecords =
                                                    await queryRegistroAnimalRecordOnce();
                                                // Filtrar manualmente por el usuario actual
                                                final userRecords = allRecords
                                                    .where((record) =>
                                                        record.iDProduc ==
                                                        currentUserReference)
                                                    .toList();
                                                print(
                                                    'Registros del usuario ${currentUserReference?.id}: ${userRecords.length}');
                                                final nextId =
                                                    getNextId(userRecords);
                                                print(
                                                    'Próximo ID asignado para usuario ${currentUserReference?.id}: $nextId');

                                                setState(() {
                                                  _model.idController?.text =
                                                      nextId.toString();
                                                  _model.tipoValueController
                                                      ?.value = 'Lechon';
                                                  _model.tipoValue = 'Lechon';
                                                  _model.fechaActualController
                                                      ?.text = getToday();
                                                  _model.generoValueController
                                                      ?.value = null;
                                                  _model.generoValue = null;
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                // Formulario con diseño responsivo
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 16.0, 16.0),
                                  child: Container(
                                    width: double.infinity,
                                    constraints: BoxConstraints(
                                      maxWidth: 570.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12.0),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x33000000),
                                          offset: Offset(0.0, 2.0),
                                        )
                                      ],
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 8.0, 16.0),
                                            child: TextFormField(
                                              controller: _model.idController,
                                              focusNode: _model.idFocusNode,
                                              autofocus: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'ID Animal',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.black87,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.black,
                                                      ),
                                              validator: _model
                                                  .idControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 8.0, 16.0),
                                            child: FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .tipoValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: [
                                                'Verraco',
                                                'Marrana',
                                                'Lechon'
                                              ],
                                              onChanged: (val) => setState(
                                                  () => _model.tipoValue = val),
                                              width: double.infinity,
                                              height: 50.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.black,
                                                      ),
                                              hintText: 'Tipo',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor: Colors.white,
                                              elevation: 2.0,
                                              borderColor: Color(0x38262D34),
                                              borderWidth: 2.0,
                                              borderRadius: 8.0,
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 8.0, 16.0),
                                            child: TextFormField(
                                              controller: _model.razaController,
                                              focusNode: _model.razaFocusNode,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Raza',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.black87,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.black,
                                                      ),
                                              validator: _model
                                                  .razaControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 8.0, 16.0),
                                            child: TextFormField(
                                              controller:
                                                  _model.fechaActualController,
                                              focusNode:
                                                  _model.fechaActualFocusNode,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Fecha',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.black87,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.black,
                                                      ),
                                              validator: _model
                                                  .fechaActualControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 8.0, 16.0),
                                            child: FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .generoValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: ['Macho', 'Hembra'],
                                              onChanged: (val) => setState(() =>
                                                  _model.generoValue = val),
                                              width: double.infinity,
                                              height: 50.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.black,
                                                      ),
                                              hintText: 'Genero',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor: Colors.white,
                                              elevation: 2.0,
                                              borderColor: Color(0x2F262D34),
                                              borderWidth: 2.0,
                                              borderRadius: 8.0,
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 8.0, 16.0),
                                            child: TextFormField(
                                              controller: _model.pesoController,
                                              focusNode: _model.pesoFocusNode,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Peso',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.black87,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.black,
                                                      ),
                                              validator: _model
                                                  .pesoControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 8.0, 16.0),
                                            child: TextFormField(
                                              controller: _model.edadController,
                                              focusNode: _model.edadFocusNode,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Edad',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.black87,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.black,
                                                      ),
                                              validator: _model
                                                  .edadControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 8.0, 16.0),
                                            child: FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .estadoValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: [
                                                'Libre Pastoreo',
                                                'Lechon',
                                                'Destete',
                                                'Otra'
                                              ],
                                              onChanged: (val) => setState(() =>
                                                  _model.estadoValue = val),
                                              width: double.infinity,
                                              height: 50.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.black,
                                                      ),
                                              hintText: 'Estado Animal',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor: Colors.white,
                                              elevation: 2.0,
                                              borderColor: Color(0x2F262D34),
                                              borderWidth: 2.0,
                                              borderRadius: 8.0,
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                // Botón de Guardar con diseño responsivo
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 20.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      // Creamos la fecha actual como DateTime
                                      final now = DateTime.now();

                                      await RegistroAnimalRecord.createDoc(
                                              currentUserReference!)
                                          .set(createRegistroAnimalRecordData(
                                        iDProduc: currentUserReference,
                                        id: int.parse(_model.idController.text),
                                        tipo: _model.tipoValue,
                                        raza: _model.razaController.text,
                                        fechaIngreso:
                                            now, // Usamos el nombre correcto del campo
                                        genero: _model.generoValue,
                                        peso: double.tryParse(
                                            _model.pesoController.text),
                                        edad: _model.edadController.text,
                                        estadoAnimal: _model.estadoValue,
                                      ));
                                      // Mostrar diálogo de confirmación
                                      await showDialog<void>(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Registro Guardado'),
                                            content: Text(
                                                'Tu animal ha sido registrado correctamente'),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(
                                                      alertDialogContext);
                                                  // Navegar al menú principal después de cerrar el diálogo
                                                  context.pushNamed(
                                                      'menuPrincipal');
                                                },
                                                child: Text('Aceptar'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                      // Si el usuario cierra el diálogo con la X, también navegamos
                                      if (!context.mounted) return;
                                      context.pushNamed('menuPrincipal');
                                    },
                                    text: 'Guardar',
                                    options: FFButtonOptions(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      height: 45.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ));
    });
  }

  // Puedes crear un método para evitar repetir código:
  Widget _buildTipoButton(BuildContext context,
      {required String label,
      required Color color,
      required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryText,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: color, width: 3.0),
        ),
        child: Column(
          children: [
            FaIcon(FontAwesomeIcons.piggyBank, color: color, size: 30.0),
            SizedBox(height: 8.0),
            Text(
              label,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    color: color,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  int getNextId(List<RegistroAnimalRecord> registros) {
    if (registros.isEmpty) {
      print('No registros found, returning ID 1');
      return 1;
    }

    // Extraer todos los IDs sin filtrar por tipo
    final ids = registros.map((r) => r.id).toList();
    print('Found all IDs: $ids');

    // Encontrar el ID máximo entre todos los animales
    int maxId = ids.reduce((a, b) => a > b ? a : b);
    int nextId = maxId + 1;
    print('Max ID: $maxId, Next ID will be: $nextId');

    return nextId;
  }

  String getToday() {
    final now = DateTime.now();
    return '${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year}';
  }
}
