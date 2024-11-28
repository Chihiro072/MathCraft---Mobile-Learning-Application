import '/flutter_flow/flutter_flow_util.dart';
import 'assessment_widget.dart' show AssessmentWidget;
import 'package:flutter/material.dart';

class AssessmentModel extends FlutterFlowModel<AssessmentWidget> {
  ///  Local state fields for this page.

  int pageNavigate = 0;

  bool buttonSelected = false;

  bool componentSelected = false;

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
