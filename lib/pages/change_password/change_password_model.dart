import '/flutter_flow/flutter_flow_util.dart';
import 'change_password_widget.dart' show ChangePasswordWidget;
import 'package:flutter/material.dart';

class ChangePasswordModel extends FlutterFlowModel<ChangePasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for currentPass widget.
  FocusNode? currentPassFocusNode;
  TextEditingController? currentPassTextController;
  String? Function(BuildContext, String?)? currentPassTextControllerValidator;
  // State field(s) for newPass widget.
  FocusNode? newPassFocusNode;
  TextEditingController? newPassTextController;
  String? Function(BuildContext, String?)? newPassTextControllerValidator;
  // State field(s) for confirmPass widget.
  FocusNode? confirmPassFocusNode;
  TextEditingController? confirmPassTextController;
  String? Function(BuildContext, String?)? confirmPassTextControllerValidator;
  // Stores action output result for [Custom Action - changePassword] action in ChangePassBtn widget.
  bool? changePasswordResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    currentPassFocusNode?.dispose();
    currentPassTextController?.dispose();

    newPassFocusNode?.dispose();
    newPassTextController?.dispose();

    confirmPassFocusNode?.dispose();
    confirmPassTextController?.dispose();
  }
}
