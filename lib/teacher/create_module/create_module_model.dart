import '/flutter_flow/flutter_flow_util.dart';
import 'create_module_widget.dart' show CreateModuleWidget;
import 'package:flutter/material.dart';

class CreateModuleModel extends FlutterFlowModel<CreateModuleWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for course_name widget.
  FocusNode? courseNameFocusNode;
  TextEditingController? courseNameTextController;
  String? Function(BuildContext, String?)? courseNameTextControllerValidator;
  // State field(s) for course_difficulty widget.
  FocusNode? courseDifficultyFocusNode;
  TextEditingController? courseDifficultyTextController;
  String? Function(BuildContext, String?)?
      courseDifficultyTextControllerValidator;
  // State field(s) for course_description widget.
  FocusNode? courseDescriptionFocusNode;
  TextEditingController? courseDescriptionTextController;
  String? Function(BuildContext, String?)?
      courseDescriptionTextControllerValidator;
  // State field(s) for content widget.
  FocusNode? contentFocusNode;
  TextEditingController? contentTextController;
  String? Function(BuildContext, String?)? contentTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    courseNameFocusNode?.dispose();
    courseNameTextController?.dispose();

    courseDifficultyFocusNode?.dispose();
    courseDifficultyTextController?.dispose();

    courseDescriptionFocusNode?.dispose();
    courseDescriptionTextController?.dispose();

    contentFocusNode?.dispose();
    contentTextController?.dispose();
  }
}
