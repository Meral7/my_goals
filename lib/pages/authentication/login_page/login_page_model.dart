import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for EmailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  String? _emailAddressControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for passward widget.
  FocusNode? passwardFocusNode;
  TextEditingController? passwardController;
  late bool passwardVisibility;
  String? Function(BuildContext, String?)? passwardControllerValidator;
  String? _passwardControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    emailAddressControllerValidator = _emailAddressControllerValidator;
    passwardVisibility = false;
    passwardControllerValidator = _passwardControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();

    passwardFocusNode?.dispose();
    passwardController?.dispose();
  }
}
