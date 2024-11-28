import '/flutter_flow/flutter_flow_util.dart';
import 'edit_module_widget.dart' show EditModuleWidget;
import 'package:flutter/material.dart';

class EditModuleModel extends FlutterFlowModel<EditModuleWidget> {
  ///  Local state fields for this page.

  int abc = 0;

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
  // State field(s) for new_content widget.
  FocusNode? newContentFocusNode;
  TextEditingController? newContentTextController;
  String? Function(BuildContext, String?)? newContentTextControllerValidator;

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

    newContentFocusNode?.dispose();
    newContentTextController?.dispose();
  }
}
