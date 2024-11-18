import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_new_item_widget.dart' show AddNewItemWidget;
import 'package:flutter/material.dart';

class AddNewItemModel extends FlutterFlowModel<AddNewItemWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for food_name widget.
  FocusNode? foodNameFocusNode;
  TextEditingController? foodNameTextController;
  String? Function(BuildContext, String?)? foodNameTextControllerValidator;
  // State field(s) for category widget.
  String? categoryValue;
  FormFieldController<String>? categoryValueController;
  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for ttp widget.
  FocusNode? ttpFocusNode;
  TextEditingController? ttpTextController;
  String? Function(BuildContext, String?)? ttpTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    foodNameFocusNode?.dispose();
    foodNameTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    ttpFocusNode?.dispose();
    ttpTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
