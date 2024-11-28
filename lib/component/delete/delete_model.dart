import '/flutter_flow/flutter_flow_util.dart';
import 'delete_widget.dart' show DeleteWidget;
import 'package:flutter/material.dart';

class DeleteModel extends FlutterFlowModel<DeleteWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for confirmDelete widget.
  FocusNode? confirmDeleteFocusNode;
  TextEditingController? confirmDeleteTextController;
  String? Function(BuildContext, String?)? confirmDeleteTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    confirmDeleteFocusNode?.dispose();
    confirmDeleteTextController?.dispose();
  }
}
