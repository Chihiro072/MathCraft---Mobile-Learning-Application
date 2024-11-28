import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_assessment_widget.dart' show AddAssessmentWidget;
import 'package:flutter/material.dart';

class AddAssessmentModel extends FlutterFlowModel<AddAssessmentWidget> {
  ///  Local state fields for this page.

  bool optionA = false;

  bool optionB = false;

  bool optionC = false;

  bool optionD = false;

  int questionNumber = 1;

  bool isSelected = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField1 widget.
  FocusNode? textField1FocusNode;
  TextEditingController? textField1TextController;
  String? Function(BuildContext, String?)? textField1TextControllerValidator;
  // State field(s) for TextField2 widget.
  FocusNode? textField2FocusNode;
  TextEditingController? textField2TextController;
  String? Function(BuildContext, String?)? textField2TextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for TextField3 widget.
  FocusNode? textField3FocusNode;
  TextEditingController? textField3TextController;
  String? Function(BuildContext, String?)? textField3TextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for TextField4 widget.
  FocusNode? textField4FocusNode;
  TextEditingController? textField4TextController;
  String? Function(BuildContext, String?)? textField4TextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for TextField5 widget.
  FocusNode? textField5FocusNode;
  TextEditingController? textField5TextController;
  String? Function(BuildContext, String?)? textField5TextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  QuestionRecord? createQuiz;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textField1FocusNode?.dispose();
    textField1TextController?.dispose();

    textField2FocusNode?.dispose();
    textField2TextController?.dispose();

    textField3FocusNode?.dispose();
    textField3TextController?.dispose();

    textField4FocusNode?.dispose();
    textField4TextController?.dispose();

    textField5FocusNode?.dispose();
    textField5TextController?.dispose();
  }
}
