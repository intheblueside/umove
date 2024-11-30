import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'bus_page1_model.dart';
export 'bus_page1_model.dart';

class BusPage1Widget extends StatefulWidget {
  const BusPage1Widget({super.key});

  @override
  State<BusPage1Widget> createState() => _BusPage1WidgetState();
}

class _BusPage1WidgetState extends State<BusPage1Widget> {
  late BusPage1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BusPage1Model());

    _model.fromFieldTextController ??= TextEditingController();
    _model.fromFieldFocusNode ??= FocusNode();

    _model.toFieldTextController ??= TextEditingController();
    _model.toFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: const Color(0xFFFD7D00),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 8.0,
            buttonSize: 40.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 24.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            'Bus Schedule',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Itim',
                  color: Colors.white,
                  fontSize: 20.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Select Route',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Inter Tight',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.21, -0.91),
                    child: SizedBox(
                      width: 310.0,
                      child: TextFormField(
                        controller: _model.fromFieldTextController,
                        focusNode: _model.fromFieldFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: 'From',
                          labelStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Arimo',
                                    letterSpacing: 0.0,
                                  ),
                          alignLabelWithHint: true,
                          hintText: 'Pick Up',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Itim',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Itim',
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                            ),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.fromFieldTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.26, -0.69),
                    child: SizedBox(
                      width: 310.0,
                      child: TextFormField(
                        controller: _model.toFieldTextController,
                        focusNode: _model.toFieldFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: 'To',
                          labelStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Arimo',
                                    letterSpacing: 0.0,
                                  ),
                          alignLabelWithHint: true,
                          hintText: 'Destination',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Itim',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Itim',
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                            ),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.toFieldTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(
                        'BusPage2',
                        queryParameters: {
                          'busRoutes': serializeParam(
                            '',
                            ParamType.String,
                          ),
                        }.withoutNulls,
                      );
                    },
                    text: 'Find Routes',
                    options: FFButtonOptions(
                      width: 310.0,
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xFF00E636),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter Tight',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                  ),
                ].divide(const SizedBox(height: 24.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
