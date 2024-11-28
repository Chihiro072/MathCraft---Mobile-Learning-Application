import '/component/teacher_nav_bar/teacher_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'teacher_home_widget.dart' show TeacherHomeWidget;
import 'package:flutter/material.dart';

class TeacherHomeModel extends FlutterFlowModel<TeacherHomeWidget> {
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
