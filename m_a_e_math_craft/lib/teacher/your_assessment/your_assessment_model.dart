import '/component/teacher_nav_bar/teacher_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'your_assessment_widget.dart' show YourAssessmentWidget;
import 'package:flutter/material.dart';

class YourAssessmentModel extends FlutterFlowModel<YourAssessmentWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TeacherNavBar component.
  late TeacherNavBarModel teacherNavBarModel;

  @override
  void initState(BuildContext context) {
    teacherNavBarModel = createModel(context, () => TeacherNavBarModel());
  }

  @override
  void dispose() {
    teacherNavBarModel.dispose();
  }
}
