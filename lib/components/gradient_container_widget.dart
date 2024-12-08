import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'gradient_container_model.dart';
export 'gradient_container_model.dart';

class GradientContainerWidget extends StatefulWidget {
  const GradientContainerWidget({super.key});

  @override
  State<GradientContainerWidget> createState() =>
      _GradientContainerWidgetState();
}

class _GradientContainerWidgetState extends State<GradientContainerWidget> {
  late GradientContainerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GradientContainerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            FlutterFlowTheme.of(context).primary,
            FlutterFlowTheme.of(context).tertiary
          ],
          stops: const [0.0, 1.0],
          begin: const AlignmentDirectional(0.87, -1.0),
          end: const AlignmentDirectional(-0.87, 1.0),
        ),
      ),
      alignment: const AlignmentDirectional(0.0, -1.0),
    );
  }
}
