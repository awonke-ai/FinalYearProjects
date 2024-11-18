import '/components/rating_stars_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'reviews_admin_widget.dart' show ReviewsAdminWidget;
import 'package:flutter/material.dart';

class ReviewsAdminModel extends FlutterFlowModel<ReviewsAdminWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for ratingStars dynamic component.
  late FlutterFlowDynamicModels<RatingStarsModel> ratingStarsModels;

  @override
  void initState(BuildContext context) {
    ratingStarsModels = FlutterFlowDynamicModels(() => RatingStarsModel());
  }

  @override
  void dispose() {
    ratingStarsModels.dispose();
  }
}
