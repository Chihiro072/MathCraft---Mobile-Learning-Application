import '/flutter_flow/flutter_flow_util.dart';
import 'reply_inquiry_widget.dart' show ReplyInquiryWidget;
import 'package:flutter/material.dart';

class ReplyInquiryModel extends FlutterFlowModel<ReplyInquiryWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for replyInquiry widget.
  FocusNode? replyInquiryFocusNode;
  TextEditingController? replyInquiryTextController;
  String? Function(BuildContext, String?)? replyInquiryTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    replyInquiryFocusNode?.dispose();
    replyInquiryTextController?.dispose();
  }
}
