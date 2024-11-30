import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'ride_page1_model.dart';
export 'ride_page1_model.dart';

class RidePage1Widget extends StatefulWidget {
  const RidePage1Widget({super.key});

  @override
  State<RidePage1Widget> createState() => _RidePage1WidgetState();
}

class _RidePage1WidgetState extends State<RidePage1Widget> {
  late RidePage1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RidePage1Model());

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
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Book A Ride',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter Tight',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Container(
                      width: 378.0,
                      height: 618.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Stack(
                        children: [
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
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Arimo',
                                        letterSpacing: 0.0,
                                      ),
                                  alignLabelWithHint: true,
                                  hintText: 'Pick Up',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Itim',
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
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
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Itim',
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                    ),
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model
                                    .fromFieldTextControllerValidator
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
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Arimo',
                                        letterSpacing: 0.0,
                                      ),
                                  alignLabelWithHint: true,
                                  hintText: 'Destination',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Itim',
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
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
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Itim',
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                    ),
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model.toFieldTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.56),
                            child: FFButtonWidget(
                              onPressed: () async {
                                var shouldSetState = false;
                                if (_model.dropDownValue == 'Go NOW') {
                                  var umoveSapubookingRecordReference1 =
                                      UmoveSapubookingRecord.collection.doc();
                                  await umoveSapubookingRecordReference1
                                      .set(createUmoveSapubookingRecordData(
                                    uid: currentUserUid,
                                    pickup: _model.fromFieldTextController.text,
                                    destination:
                                        _model.toFieldTextController.text,
                                    bookingTime: getCurrentTimestamp,
                                    noPassenger: _model.numOfPassValue,
                                    status: 'created',
                                  ));
                                  _model.bookingId1 = UmoveSapubookingRecord
                                      .getDocumentFromData(
                                          createUmoveSapubookingRecordData(
                                            uid: currentUserUid,
                                            pickup: _model
                                                .fromFieldTextController.text,
                                            destination: _model
                                                .toFieldTextController.text,
                                            bookingTime: getCurrentTimestamp,
                                            noPassenger: _model.numOfPassValue,
                                            status: 'created',
                                          ),
                                          umoveSapubookingRecordReference1);
                                  shouldSetState = true;

                                  context.pushNamed(
                                    'RidePage2',
                                    queryParameters: {
                                      'bookingDetail': serializeParam(
                                        _model.bookingId1,
                                        ParamType.Document,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      'bookingDetail': _model.bookingId1,
                                    },
                                  );

                                  if (shouldSetState) safeSetState(() {});
                                  return;
                                } else {
                                  var umoveSapubookingRecordReference2 =
                                      UmoveSapubookingRecord.collection.doc();
                                  await umoveSapubookingRecordReference2
                                      .set(createUmoveSapubookingRecordData(
                                    uid: currentUserUid,
                                    pickup: _model.fromFieldTextController.text,
                                    destination:
                                        _model.toFieldTextController.text,
                                    bookingTime: _model.datePicked,
                                    noPassenger: _model.numOfPassValue,
                                    status: 'created',
                                  ));
                                  _model.bookingId2 = UmoveSapubookingRecord
                                      .getDocumentFromData(
                                          createUmoveSapubookingRecordData(
                                            uid: currentUserUid,
                                            pickup: _model
                                                .fromFieldTextController.text,
                                            destination: _model
                                                .toFieldTextController.text,
                                            bookingTime: _model.datePicked,
                                            noPassenger: _model.numOfPassValue,
                                            status: 'created',
                                          ),
                                          umoveSapubookingRecordReference2);
                                  shouldSetState = true;

                                  context.pushNamed(
                                    'RidePage2',
                                    queryParameters: {
                                      'bookingDetail': serializeParam(
                                        _model.bookingId2,
                                        ParamType.Document,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      'bookingDetail': _model.bookingId2,
                                    },
                                  );

                                  if (shouldSetState) safeSetState(() {});
                                  return;
                                }

                                if (shouldSetState) safeSetState(() {});
                              },
                              text: 'BOOK',
                              options: FFButtonOptions(
                                width: 310.0,
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0xFF00E636),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Itim',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 10.0,
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.64, -0.49),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.dropDownValueController ??=
                                  FormFieldController<String>(
                                _model.dropDownValue ??= 'Go NOW',
                              ),
                              options: const ['Go NOW', 'Schedule'],
                              onChanged: (val) async {
                                safeSetState(() => _model.dropDownValue = val);
                                if (_model.dropDownValue != 'Go NOW') {
                                  final datePickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: getCurrentTimestamp,
                                    firstDate: getCurrentTimestamp,
                                    lastDate: DateTime(2050),
                                    builder: (context, child) {
                                      return wrapInMaterialDatePickerTheme(
                                        context,
                                        child!,
                                        headerBackgroundColor:
                                            const Color(0xFFFD7D00),
                                        headerForegroundColor:
                                            FlutterFlowTheme.of(context).info,
                                        headerTextStyle:
                                            FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Inter Tight',
                                                  fontSize: 32.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                        pickerBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        pickerForegroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        selectedDateTimeBackgroundColor:
                                            const Color(0xFFFD7D00),
                                        selectedDateTimeForegroundColor:
                                            FlutterFlowTheme.of(context).info,
                                        actionButtonForegroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        iconSize: 24.0,
                                      );
                                    },
                                  );

                                  TimeOfDay? datePickedTime;
                                  if (datePickedDate != null) {
                                    datePickedTime = await showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.fromDateTime(
                                          getCurrentTimestamp),
                                      builder: (context, child) {
                                        return wrapInMaterialTimePickerTheme(
                                          context,
                                          child!,
                                          headerBackgroundColor:
                                              const Color(0xFFFD7D00),
                                          headerForegroundColor:
                                              FlutterFlowTheme.of(context).info,
                                          headerTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineLarge
                                                  .override(
                                                    fontFamily: 'Inter Tight',
                                                    fontSize: 32.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                          pickerBackgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          pickerForegroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          selectedDateTimeBackgroundColor:
                                              const Color(0xFFFD7D00),
                                          selectedDateTimeForegroundColor:
                                              FlutterFlowTheme.of(context).info,
                                          actionButtonForegroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          iconSize: 24.0,
                                        );
                                      },
                                    );
                                  }

                                  if (datePickedDate != null &&
                                      datePickedTime != null) {
                                    safeSetState(() {
                                      _model.datePicked = DateTime(
                                        datePickedDate.year,
                                        datePickedDate.month,
                                        datePickedDate.day,
                                        datePickedTime!.hour,
                                        datePickedTime.minute,
                                      );
                                    });
                                  }
                                }
                              },
                              width: 141.0,
                              height: 40.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Itim',
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Select Time...',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: false,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.76, -0.49),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.numOfPassValueController ??=
                                  FormFieldController<String>(
                                _model.numOfPassValue ??= '1',
                              ),
                              options: const ['1', '2', '3', '4', '5', '6'],
                              onChanged: (val) => safeSetState(
                                  () => _model.numOfPassValue = val),
                              width: 149.0,
                              height: 40.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Itim',
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Num of Passengers...',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: false,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: 200.0,
                              height: 200.0,
                              decoration: BoxDecoration(
                                color: const Color(0xFFEF9640),
                                borderRadius: BorderRadius.circular(20.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-0.09, -0.49),
                                    child: Icon(
                                      Icons.access_time,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      size: 130.0,
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.83),
                                    child: Text(
                                      valueOrDefault<String>(
                                        _model.dropDownValue == 'Go NOW'
                                            ? dateTimeFormat("d/M/y h:mm a",
                                                getCurrentTimestamp)
                                            : dateTimeFormat("d/M/y h:mm a",
                                                _model.datePicked),
                                        'Book A Time',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Itim',
                                            fontSize: 15.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
