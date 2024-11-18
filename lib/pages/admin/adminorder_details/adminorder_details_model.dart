import '/flutter_flow/flutter_flow_util.dart';
import 'adminorder_details_widget.dart' show AdminorderDetailsWidget;
import 'package:flutter/material.dart';

class AdminorderDetailsModel extends FlutterFlowModel<AdminorderDetailsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
