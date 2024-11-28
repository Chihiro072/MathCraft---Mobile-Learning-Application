import '/component/admin_navigate_bar/admin_navigate_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'manage_user_widget.dart' show ManageUserWidget;
import 'package:flutter/material.dart';

class ManageUserModel extends FlutterFlowModel<ManageUserWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for teacherUsername widget.
  FocusNode? teacherUsernameFocusNode;
  TextEditingController? teacherUsernameTextController;
  String? Function(BuildContext, String?)?
      teacherUsernameTextControllerValidator;
  // State field(s) for teacherPassword widget.
  FocusNode? teacherPasswordFocusNode;
  TextEditingController? teacherPasswordTextController;
  late bool teacherPasswordVisibility;
  String? Function(BuildContext, String?)?
      teacherPasswordTextControllerValidator;
  // Model for AdminNavigateBar component.
  late AdminNavigateBarModel adminNavigateBarModel;

  @override
  void initState(BuildContext context) {
    teacherPasswordVisibility = false;
    adminNavigateBarModel = createModel(context, () => AdminNavigateBarModel());
  }

  @override
  void dispose() {
    teacherUsernameFocusNode?.dispose();
    teacherUsernameTextController?.dispose();

    teacherPasswordFocusNode?.dispose();
    teacherPasswordTextController?.dispose();

    adminNavigateBarModel.dispose();
  }

  /// Action blocks.
  Future getinput(BuildContext context) async {}
}
