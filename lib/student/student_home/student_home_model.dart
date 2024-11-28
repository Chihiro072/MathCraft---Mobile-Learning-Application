import '/component/studentnavigatebar/studentnavigatebar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'student_home_widget.dart' show StudentHomeWidget;
import 'package:flutter/material.dart';

class StudentHomeModel extends FlutterFlowModel<StudentHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Studentnavigatebar component.
  late StudentnavigatebarModel studentnavigatebarModel;

  @override
  void initState(BuildContext context) {
    studentnavigatebarModel =
        createModel(context, () => StudentnavigatebarModel());
  }

  @override
  void dispose() {
    studentnavigatebarModel.dispose();
  }
}
