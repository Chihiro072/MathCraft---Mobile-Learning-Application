import '/component/admin_navigate_bar/admin_navigate_bar_widget.dart';
import '/component/studentnavigatebar/studentnavigatebar_widget.dart';
import '/component/teacher_nav_bar/teacher_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'settings_widget.dart' show SettingsWidget;
import 'package:flutter/material.dart';

class SettingsModel extends FlutterFlowModel<SettingsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Studentnavigatebar component.
  late StudentnavigatebarModel studentnavigatebarModel;
  // Model for TeacherNavBar component.
  late TeacherNavBarModel teacherNavBarModel;
  // Model for AdminNavigateBar component.
  late AdminNavigateBarModel adminNavigateBarModel;

  @override
  void initState(BuildContext context) {
    studentnavigatebarModel =
        createModel(context, () => StudentnavigatebarModel());
    teacherNavBarModel = createModel(context, () => TeacherNavBarModel());
    adminNavigateBarModel = createModel(context, () => AdminNavigateBarModel());
  }

  @override
  void dispose() {
    studentnavigatebarModel.dispose();
    teacherNavBarModel.dispose();
    adminNavigateBarModel.dispose();
  }

  /// Action blocks.
  Future deleteAkaun(BuildContext context) async {}
}
