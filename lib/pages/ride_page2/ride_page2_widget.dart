import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'ride_page2_model.dart';
export 'ride_page2_model.dart';

class RidePage2Widget extends StatefulWidget {
  const RidePage2Widget({
    super.key,
    required this.bookingDetail,
  });

  final UmoveSapubookingRecord? bookingDetail;

  @override
  State<RidePage2Widget> createState() => _RidePage2WidgetState();
}

class _RidePage2WidgetState extends State<RidePage2Widget> {
  late RidePage2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RidePage2Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.availableDriverCount = await queryUmoveDriverRecordCount(
        queryBuilder: (umoveDriverRecord) => umoveDriverRecord.where(
          'driverAvailability',
          isEqualTo: true,
        ),
      );
      _model.availableDriver = await queryUmoveDriverRecordOnce(
        queryBuilder: (umoveDriverRecord) => umoveDriverRecord.where(
          'driverAvailability',
          isEqualTo: true,
        ),
      );
      if (_model.availableDriverCount == 0) {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: const Text('I am sorry...'),
              content: const Text(
                  'There are no available driver at the moment. Please try again later.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: const Text('Ok'),
                ),
              ],
            );
          },
        );
        await widget.bookingDetail!.reference.delete();
        context.safePop();
        return;
      } else {
        await Future.delayed(const Duration(milliseconds: 1000));

        context.pushNamed(
          'RidePage3',
          queryParameters: {
            'availableDriverCount': serializeParam(
              _model.availableDriverCount,
              ParamType.int,
            ),
            'availableDriverList': serializeParam(
              _model.availableDriver,
              ParamType.Document,
              isList: true,
            ),
            'bookingDetail': serializeParam(
              widget.bookingDetail,
              ParamType.Document,
            ),
          }.withoutNulls,
          extra: <String, dynamic>{
            'availableDriverList': _model.availableDriver,
            'bookingDetail': widget.bookingDetail,
          },
        );

        return;
      }
    });

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
          elevation: 10.0,
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
                            alignment: const AlignmentDirectional(-0.07, 0.68),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await widget.bookingDetail!.reference.delete();
                                context.safePop();
                              },
                              text: 'CANCEL',
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
                            alignment: const AlignmentDirectional(-0.74, -0.9),
                            child: Text(
                              'Searching for drivers ......',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Itim',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w100,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.75, -0.74),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Container(
                                width: 110.0,
                                height: 53.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    width: 2.0,
                                  ),
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget.bookingDetail?.pickup,
                                      'UM Central',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Itim',
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.71, -0.74),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Container(
                                width: 110.0,
                                height: 53.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    width: 2.0,
                                  ),
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget.bookingDetail?.destination,
                                      'UM Central',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Itim',
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, -0.7),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.02),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/u-move-20dyvr/assets/2qxzaqfkylpi/loading_.gif',
                                width: 375.0,
                                height: 300.0,
                                fit: BoxFit.cover,
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
