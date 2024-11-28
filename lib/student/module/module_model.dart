import '/component/studentnavigatebar/studentnavigatebar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'module_widget.dart' show ModuleWidget;
import 'package:flutter/material.dart';

class ModuleModel extends FlutterFlowModel<ModuleWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for Studentnavigatebar component.
  late StudentnavigatebarModel studentnavigatebarModel;

  @override
  void initState(BuildContext context) {
    studentnavigatebarModel =
        createModel(context, () => StudentnavigatebarModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    studentnavigatebarModel.dispose();
  }
}
