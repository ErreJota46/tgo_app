import '/flutter_flow/flutter_flow_util.dart';
import 'forgotten_password1_widget.dart' show ForgottenPassword1Widget;
import 'package:flutter/material.dart';

class ForgottenPassword1Model
    extends FlutterFlowModel<ForgottenPassword1Widget> {
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
