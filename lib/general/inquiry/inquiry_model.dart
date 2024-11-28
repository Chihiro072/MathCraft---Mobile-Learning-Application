import '/flutter_flow/flutter_flow_util.dart';
import 'inquiry_widget.dart' show InquiryWidget;
import 'package:flutter/material.dart';

class InquiryModel extends FlutterFlowModel<InquiryWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for insertInquiry widget.
  FocusNode? insertInquiryFocusNode;
  TextEditingController? insertInquiryTextController;
  String? Function(BuildContext, String?)? insertInquiryTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    insertInquiryFocusNode?.dispose();
    insertInquiryTextController?.dispose();
  }
}
