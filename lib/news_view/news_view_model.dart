import '/components/gradient_container_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'news_view_widget.dart' show NewsViewWidget;
import 'package:flutter/material.dart';

class NewsViewModel extends FlutterFlowModel<NewsViewWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for GradientContainer component.
  late GradientContainerModel gradientContainerModel;

  @override
  void initState(BuildContext context) {
    gradientContainerModel =
        createModel(context, () => GradientContainerModel());
  }

  @override
  void dispose() {
    gradientContainerModel.dispose();
  }
}
