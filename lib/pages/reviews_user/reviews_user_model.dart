import '/components/rating_stars_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'reviews_user_widget.dart' show ReviewsUserWidget;
import 'package:flutter/material.dart';

class ReviewsUserModel extends FlutterFlowModel<ReviewsUserWidget> {
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
