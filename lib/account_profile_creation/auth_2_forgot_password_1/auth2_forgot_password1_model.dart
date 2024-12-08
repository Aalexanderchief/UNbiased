import '/flutter_flow/flutter_flow_util.dart';
import 'auth2_forgot_password1_widget.dart' show Auth2ForgotPassword1Widget;
import 'package:flutter/material.dart';

class Auth2ForgotPassword1Model
    extends FlutterFlowModel<Auth2ForgotPassword1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
