import '/component/admin_navigate_bar/admin_navigate_bar_widget.dart';
import '/component/teacher_nav_bar/teacher_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'studentnavigatebar_widget.dart' show StudentnavigatebarWidget;
import 'package:flutter/material.dart';

class StudentnavigatebarModel
    extends FlutterFlowModel<StudentnavigatebarWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for TeacherNavBar component.
  late TeacherNavBarModel teacherNavBarModel;
  // Model for AdminNavigateBar component.
  late AdminNavigateBarModel adminNavigateBarModel;

  @override
  void initState(BuildContext context) {
    teacherNavBarModel = createModel(context, () => TeacherNavBarModel());
    adminNavigateBarModel = createModel(context, () => AdminNavigateBarModel());
  }

  @override
  void dispose() {
    teacherNavBarModel.dispose();
    adminNavigateBarModel.dispose();
  }
}
