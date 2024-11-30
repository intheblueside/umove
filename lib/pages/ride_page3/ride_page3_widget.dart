import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'ride_page3_model.dart';
export 'ride_page3_model.dart';

class RidePage3Widget extends StatefulWidget {
  const RidePage3Widget({
    super.key,
    required this.availableDriverCount,
    required this.availableDriverList,
    required this.bookingDetail,
  });

  final int? availableDriverCount;
  final List<UmoveDriverRecord>? availableDriverList;
  final UmoveSapubookingRecord? bookingDetail;

  @override
  State<RidePage3Widget> createState() => _RidePage3WidgetState();
}

class _RidePage3WidgetState extends State<RidePage3Widget> {
  late RidePage3Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RidePage3Model());

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
                  fontFamily: 'Itim',
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  fontSize: 20.0,
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
                            alignment: const AlignmentDirectional(-0.74, -0.9),
                            child: Text(
                              'Found ${widget.availableDriverCount?.toString()} of drivers',
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
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: 311.0,
                              height: 310.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.5),
                                child: Builder(
                                  builder: (context) {
                                    final availableDriverList = widget
                                        .availableDriverList!
                                        .toList()
                                        .take(10)
                                        .toList();
                                    if (availableDriverList.isEmpty) {
                                      return Center(
                                        child: Image.asset(
                                          'https://www.google.com/search?q=no+record+found+picture&sca_esv=5140e803a5dc7c59&rlz=1C1GCEA_enMY1027MY1027&udm=2&biw=1920&bih=869&ei=8LNKZ5WCEeO94-EP7IaNoA0&ved=0ahUKEwiVupSBuoOKAxXj3jgGHWxDA9QQ4dUDCBA&uact=5&oq=no+record+found+picture&gs_lp=EgNpbWciF25vIHJlY29yZCBmb3VuZCBwaWN0dXJlSJsXUMEEWO8VcAJ4AJABAJgBQKAB7QKqAQE3uAEDyAEA-AEBmAIAoAIAmAMAiAYBkgcAoAe7Ag&sclient=img#vhid=BAgMnMclaAKmsM&vssid=mosaic',
                                        ),
                                      );
                                    }

                                    return ListView.separated(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: availableDriverList.length,
                                      separatorBuilder: (_, __) =>
                                          const SizedBox(height: 5.0),
                                      itemBuilder:
                                          (context, availableDriverListIndex) {
                                        final availableDriverListItem =
                                            availableDriverList[
                                                availableDriverListIndex];
                                        return Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: const Color(0xFFF5D0D0),
                                            elevation: 10.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await widget
                                                    .bookingDetail!.reference
                                                    .update(
                                                        createUmoveSapubookingRecordData(
                                                  totalFare: functions
                                                      .fareCalculationFunction(
                                                          widget.bookingDetail!
                                                              .bookingTime!,
                                                          ''),
                                                  status: 'driverSelected',
                                                  driverId:
                                                      availableDriverListItem
                                                          .driverid,
                                                  eta: functions.etaFunction(
                                                      widget.bookingDetail!
                                                          .bookingTime!),
                                                ));

                                                context.pushNamed(
                                                  'RidePage4',
                                                  queryParameters: {
                                                    'bookingDetail':
                                                        serializeParam(
                                                      widget.bookingDetail,
                                                      ParamType.Document,
                                                    ),
                                                    'driverDetail':
                                                        serializeParam(
                                                      availableDriverListItem,
                                                      ParamType.Document,
                                                    ),
                                                    'eta': serializeParam(
                                                      '',
                                                      ParamType.String,
                                                    ),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    'bookingDetail':
                                                        widget.bookingDetail,
                                                    'driverDetail':
                                                        availableDriverListItem,
                                                  },
                                                );
                                              },
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  20.0,
                                                                  10.0,
                                                                  20.0),
                                                      child: Container(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Image.network(
                                                          availableDriverListItem
                                                              .driverprofilePic,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -0.22, -1.11),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  20.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        availableDriverListItem
                                                            .drivername,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -0.31, -1.41),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  50.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'RM ${functions.fareCalculationFunction(widget.bookingDetail!.bookingTime!, widget.bookingDetail!.noPassenger)}',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.81, -0.87),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  50.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'ETA : 5 - 15 MINS',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.1, 0.73),
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
