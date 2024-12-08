import '/components/gradient_container_widget.dart';
import '/components/popup_widget.dart';
import '/components/search_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'pagina_stiri_model.dart';
export 'pagina_stiri_model.dart';

class PaginaStiriWidget extends StatefulWidget {
  const PaginaStiriWidget({super.key});

  @override
  State<PaginaStiriWidget> createState() => _PaginaStiriWidgetState();
}

class _PaginaStiriWidgetState extends State<PaginaStiriWidget> {
  late PaginaStiriModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaginaStiriModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Container(
                width: 1440.0,
                height: 900.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Stack(
                  children: [
                    wrapWithModel(
                      model: _model.gradientContainerModel,
                      updateCallback: () => safeSetState(() {}),
                      child: const GradientContainerWidget(),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: Container(
                          width: 800.0,
                          height: 760.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: wrapWithModel(
                            model: _model.searchModel,
                            updateCallback: () => safeSetState(() {}),
                            child: const SearchWidget(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 1459.0,
                height: 100.0,
                decoration: const BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(120.0, 20.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/logo.png',
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Builder(
                      builder: (context) => Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            900.0, 20.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
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
                                      onTap: () => FocusScope.of(dialogContext)
                                          .unfocus(),
                                      child: const PopupWidget(),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/user-solid.svg',
                              width: 50.0,
                              height: 50.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
