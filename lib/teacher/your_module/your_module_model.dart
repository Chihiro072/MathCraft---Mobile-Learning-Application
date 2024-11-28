import '/component/teacher_nav_bar/teacher_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'your_module_widget.dart' show YourModuleWidget;
import 'package:flutter/material.dart';

class YourModuleModel extends FlutterFlowModel<YourModuleWidget> {
  ///  Local state fields for this page.

  String? module;

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
