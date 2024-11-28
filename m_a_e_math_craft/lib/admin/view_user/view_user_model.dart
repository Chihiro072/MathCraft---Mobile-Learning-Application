import '/flutter_flow/flutter_flow_util.dart';
import 'view_user_widget.dart' show ViewUserWidget;
import 'package:flutter/material.dart';

class ViewUserModel extends FlutterFlowModel<ViewUserWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
