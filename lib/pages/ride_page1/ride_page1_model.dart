import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ride_page1_widget.dart' show RidePage1Widget;
import 'package:flutter/material.dart';

class RidePage1Model extends FlutterFlowModel<RidePage1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for fromField widget.
  FocusNode? fromFieldFocusNode;
  TextEditingController? fromFieldTextController;
  String? Function(BuildContext, String?)? fromFieldTextControllerValidator;
  // State field(s) for toField widget.
  FocusNode? toFieldFocusNode;
  TextEditingController? toFieldTextController;
  String? Function(BuildContext, String?)? toFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in BookBtn widget.
  UmoveSapubookingRecord? bookingId1;
  // Stores action output result for [Backend Call - Create Document] action in BookBtn widget.
  UmoveSapubookingRecord? bookingId2;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  DateTime? datePicked;
  // State field(s) for numOfPass widget.
  String? numOfPassValue;
  FormFieldController<String>? numOfPassValueController;

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
