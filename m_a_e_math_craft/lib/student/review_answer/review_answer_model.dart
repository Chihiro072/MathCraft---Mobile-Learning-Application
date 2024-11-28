import '/flutter_flow/flutter_flow_util.dart';
import 'review_answer_widget.dart' show ReviewAnswerWidget;
import 'package:flutter/material.dart';

class ReviewAnswerModel extends FlutterFlowModel<ReviewAnswerWidget> {
  ///  Local state fields for this page.

  int navigatePage = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
