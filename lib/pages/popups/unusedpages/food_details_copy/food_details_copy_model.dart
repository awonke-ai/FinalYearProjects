import '/flutter_flow/flutter_flow_util.dart';
import 'food_details_copy_widget.dart' show FoodDetailsCopyWidget;
import 'package:flutter/material.dart';

class FoodDetailsCopyModel extends FlutterFlowModel<FoodDetailsCopyWidget> {
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
