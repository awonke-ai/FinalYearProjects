import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'rating_stars_model.dart';
export 'rating_stars_model.dart';

class RatingStarsWidget extends StatefulWidget {
  const RatingStarsWidget({
    super.key,
    this.parameter1,
  });

  final int? parameter1;

  @override
  State<RatingStarsWidget> createState() => _RatingStarsWidgetState();
}

class _RatingStarsWidgetState extends State<RatingStarsWidget> {
  late RatingStarsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RatingStarsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(-1.0, 0.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(70.0, 0.0, 0.0, 0.0),
        child: RatingBar.builder(
          onRatingUpdate: (newValue) =>
              safeSetState(() => _model.ratingBarValue = newValue),
          itemBuilder: (context, index) => Icon(
            Icons.star_rounded,
            color: FlutterFlowTheme.of(context).tertiary,
          ),
          direction: Axis.horizontal,
          initialRating: _model.ratingBarValue ??=
              widget.parameter1!.toDouble(),
          unratedColor: const Color(0xFFF6C4A1),
          itemCount: 5,
          itemSize: 20.0,
          glowColor: FlutterFlowTheme.of(context).tertiary,
        ),
      ),
    );
  }
}
