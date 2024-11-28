import '/flutter_flow/flutter_flow_util.dart';
import 'admin_loading_widget.dart' show AdminLoadingWidget;
import 'package:flutter/material.dart';

class AdminLoadingModel extends FlutterFlowModel<AdminLoadingWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailText widget.
  FocusNode? emailTextFocusNode;
  TextEditingController? emailTextTextController;
  String? Function(BuildContext, String?)? emailTextTextControllerValidator;
  // State field(s) for pwText widget.
  FocusNode? pwTextFocusNode;
  TextEditingController? pwTextTextController;
  late bool pwTextVisibility;
  String? Function(BuildContext, String?)? pwTextTextControllerValidator;

  @override
  void initState(BuildContext context) {
    pwTextVisibility = false;
  }

  @override
  void dispose() {
    emailTextFocusNode?.dispose();
    emailTextTextController?.dispose();

    pwTextFocusNode?.dispose();
    pwTextTextController?.dispose();
  }
}
