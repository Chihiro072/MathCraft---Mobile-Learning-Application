import '/component/admin_navigate_bar/admin_navigate_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'view_inquiry_widget.dart' show ViewInquiryWidget;
import 'package:flutter/material.dart';

class ViewInquiryModel extends FlutterFlowModel<ViewInquiryWidget> {
  ///  State fields for stateful widgets in this page.

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
