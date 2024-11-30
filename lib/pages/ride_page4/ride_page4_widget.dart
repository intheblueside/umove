import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'ride_page4_model.dart';
export 'ride_page4_model.dart';

class RidePage4Widget extends StatefulWidget {
  const RidePage4Widget({
    super.key,
    required this.bookingDetail,
    required this.driverDetail,
    required this.eta,
  });

  final UmoveSapubookingRecord? bookingDetail;
  final UmoveDriverRecord? driverDetail;
  final String? eta;

  @override
  State<RidePage4Widget> createState() => _RidePage4WidgetState();
}

class _RidePage4WidgetState extends State<RidePage4Widget> {
  late RidePage4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RidePage4Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.bookingDetail = await UmoveSapubookingRecord.getDocumentOnce(
          widget.bookingDetail!.reference);
      await Future.delayed(const Duration(milliseconds: 1000));

      context.pushNamed(
        'RidePagePayment',
        queryParameters: {
          'bookingDetail': serializeParam(
            _model.bookingDetail,
            ParamType.Document,
          ),
          'selectedDriver': serializeParam(
            widget.driverDetail,
            ParamType.Document,
          ),
        }.withoutNulls,
        extra: <String, dynamic>{
          'bookingDetail': _model.bookingDetail,
          'selectedDriver': widget.driverDetail,
        },
      );
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
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.02),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/u-move-20dyvr/assets/2qxzaqfkylpi/loading_.gif',
                    width: 375.0,
                    height: 557.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 22.0, 0.0, 0.0),
                  child: Text(
                    'You are on the way...',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Itim',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w100,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
