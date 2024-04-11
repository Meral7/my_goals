import '/flutter_flow/flutter_flow_util.dart';
import 'create_task_component_widget.dart' show CreateTaskComponentWidget;
import 'package:flutter/material.dart';

class CreateTaskComponentModel
    extends FlutterFlowModel<CreateTaskComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for GoalTextField widget.
  FocusNode? goalTextFieldFocusNode;
  TextEditingController? goalTextFieldController;
  String? Function(BuildContext, String?)? goalTextFieldControllerValidator;
  String? _goalTextFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DescriptionTextField widget.
  FocusNode? descriptionTextFieldFocusNode;
  TextEditingController? descriptionTextFieldController;
  String? Function(BuildContext, String?)?
      descriptionTextFieldControllerValidator;
  String? _descriptionTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    goalTextFieldControllerValidator = _goalTextFieldControllerValidator;
    descriptionTextFieldControllerValidator =
        _descriptionTextFieldControllerValidator;
  }

  @override
  void dispose() {
    goalTextFieldFocusNode?.dispose();
    goalTextFieldController?.dispose();

    descriptionTextFieldFocusNode?.dispose();
    descriptionTextFieldController?.dispose();
  }
}
