import '/components/rating_stars_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'contac_us_widget.dart' show ContacUsWidget;
import 'package:flutter/material.dart';

class ContacUsModel extends FlutterFlowModel<ContacUsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // Models for ratingStars dynamic component.
  late FlutterFlowDynamicModels<RatingStarsModel> ratingStarsModels;

  @override
  void initState(BuildContext context) {
    ratingStarsModels = FlutterFlowDynamicModels(() => RatingStarsModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    ratingStarsModels.dispose();
  }
}
