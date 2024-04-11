import '/flutter_flow/flutter_flow_util.dart';
import 'create_account_page_widget.dart' show CreateAccountPageWidget;
import 'package:flutter/material.dart';

class CreateAccountPageModel extends FlutterFlowModel<CreateAccountPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for EmailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  String? _emailAddressControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'invalid email';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
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
      return 'passward must be at least 6 char';
    }

    if (val.length < 6) {
      return 'pasword is too short';
    }

    return null;
  }

  // State field(s) for ConfirmPassward widget.
  FocusNode? confirmPasswardFocusNode;
  TextEditingController? confirmPasswardController;
  late bool confirmPasswardVisibility;
  String? Function(BuildContext, String?)? confirmPasswardControllerValidator;
  String? _confirmPasswardControllerValidator(
      BuildContext context, String? val) {
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
    confirmPasswardVisibility = false;
    confirmPasswardControllerValidator = _confirmPasswardControllerValidator;
  }

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();

    passwardFocusNode?.dispose();
    passwardController?.dispose();

    confirmPasswardFocusNode?.dispose();
    confirmPasswardController?.dispose();
  }
}
