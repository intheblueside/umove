import '/flutter_flow/flutter_flow_util.dart';
import 'bus_page1_widget.dart' show BusPage1Widget;
import 'package:flutter/material.dart';

class BusPage1Model extends FlutterFlowModel<BusPage1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for fromField widget.
  FocusNode? fromFieldFocusNode;
  TextEditingController? fromFieldTextController;
  String? Function(BuildContext, String?)? fromFieldTextControllerValidator;
  // State field(s) for toField widget.
  FocusNode? toFieldFocusNode;
  TextEditingController? toFieldTextController;
  String? Function(BuildContext, String?)? toFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fromFieldFocusNode?.dispose();
    fromFieldTextController?.dispose();

    toFieldFocusNode?.dispose();
    toFieldTextController?.dispose();
  }
}
