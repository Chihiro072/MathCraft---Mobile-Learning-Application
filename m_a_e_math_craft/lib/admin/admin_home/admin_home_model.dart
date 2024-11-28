import '/component/admin_navigate_bar/admin_navigate_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_home_widget.dart' show AdminHomeWidget;
import 'package:flutter/material.dart';

class AdminHomeModel extends FlutterFlowModel<AdminHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // Model for AdminNavigateBar component.
  late AdminNavigateBarModel adminNavigateBarModel;

  @override
  void initState(BuildContext context) {
    adminNavigateBarModel = createModel(context, () => AdminNavigateBarModel());
  }

  @override
  void dispose() {
    adminNavigateBarModel.dispose();
  }
}
