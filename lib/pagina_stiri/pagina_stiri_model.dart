import '/components/gradient_container_widget.dart';
import '/components/popup_widget.dart';
import '/components/search_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pagina_stiri_widget.dart' show PaginaStiriWidget;
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class PaginaStiriModel extends FlutterFlowModel<PaginaStiriWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for GradientContainer component.
  late GradientContainerModel gradientContainerModel;
  // Model for search component.
  late SearchModel searchModel;

  @override
  void initState(BuildContext context) {
    gradientContainerModel =
        createModel(context, () => GradientContainerModel());
    searchModel = createModel(context, () => SearchModel());
  }

  @override
  void dispose() {
    gradientContainerModel.dispose();
    searchModel.dispose();
  }

  /// Action blocks.
  Future popup(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (dialogContext) {
        return Dialog(
          elevation: 0,
          insetPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          alignment: const AlignmentDirectional(0.0, 0.0)
              .resolve(Directionality.of(context)),
          child: WebViewAware(
            child: GestureDetector(
              onTap: () => FocusScope.of(dialogContext).unfocus(),
              child: const PopupWidget(),
            ),
          ),
        );
      },
    );
  }
}
