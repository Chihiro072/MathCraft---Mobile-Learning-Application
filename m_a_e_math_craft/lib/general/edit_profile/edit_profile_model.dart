import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for updateUsername widget.
  FocusNode? updateUsernameFocusNode;
  TextEditingController? updateUsernameTextController;
  String? Function(BuildContext, String?)?
      updateUsernameTextControllerValidator;
  // State field(s) for updateCity widget.
  FocusNode? updateCityFocusNode;
  TextEditingController? updateCityTextController;
  String? Function(BuildContext, String?)? updateCityTextControllerValidator;
  // State field(s) for updateState widget.
  String? updateStateValue;
  FormFieldController<String>? updateStateValueController;
  // State field(s) for updateBio widget.
  FocusNode? updateBioFocusNode;
  TextEditingController? updateBioTextController;
  String? Function(BuildContext, String?)? updateBioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    updateUsernameFocusNode?.dispose();
    updateUsernameTextController?.dispose();

    updateCityFocusNode?.dispose();
    updateCityTextController?.dispose();

    updateBioFocusNode?.dispose();
    updateBioTextController?.dispose();
  }
}
