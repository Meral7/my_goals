import '/flutter_flow/flutter_flow_util.dart';
import 'update_goal_component_widget.dart' show UpdateGoalComponentWidget;
import 'package:flutter/material.dart';

class UpdateGoalComponentModel
    extends FlutterFlowModel<UpdateGoalComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for TaskTextField widget.
  FocusNode? taskTextFieldFocusNode;
  TextEditingController? taskTextFieldController;
  String? Function(BuildContext, String?)? taskTextFieldControllerValidator;
  String? _taskTextFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DescriptionTextFieldTask widget.
  FocusNode? descriptionTextFieldTaskFocusNode;
  TextEditingController? descriptionTextFieldTaskController;
  String? Function(BuildContext, String?)?
      descriptionTextFieldTaskControllerValidator;
  String? _descriptionTextFieldTaskControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    taskTextFieldControllerValidator = _taskTextFieldControllerValidator;
    descriptionTextFieldTaskControllerValidator =
        _descriptionTextFieldTaskControllerValidator;
  }

  @override
  void dispose() {
    taskTextFieldFocusNode?.dispose();
    taskTextFieldController?.dispose();

    descriptionTextFieldTaskFocusNode?.dispose();
    descriptionTextFieldTaskController?.dispose();
  }
}
