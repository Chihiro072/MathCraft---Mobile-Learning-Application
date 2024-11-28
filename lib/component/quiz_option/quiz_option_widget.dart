import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'quiz_option_model.dart';
export 'quiz_option_model.dart';

class QuizOptionWidget extends StatefulWidget {
  const QuizOptionWidget({
    super.key,
    required this.questionNum,
    required this.questionName,
    required this.isTrue,
  });

  final String? questionNum;
  final String? questionName;
  final bool? isTrue;

  @override
  State<QuizOptionWidget> createState() => _QuizOptionWidgetState();
}

class _QuizOptionWidgetState extends State<QuizOptionWidget> {
  late QuizOptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuizOptionModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          if (widget.isTrue!) {
            if (_model.isAnswered != null) {
              _model.isAnswered = null;
              safeSetState(() {});
              FFAppState().question = FFAppState().question + -1;
              safeSetState(() {});
              FFAppState().score = FFAppState().score + -1;
              safeSetState(() {});
            } else {
              _model.isAnswered = true;
              safeSetState(() {});
              FFAppState().question = FFAppState().question + 1;
              safeSetState(() {});
              FFAppState().score = FFAppState().score + 1;
              safeSetState(() {});
            }
          } else {
            if (_model.isAnswered != null) {
              _model.isAnswered = null;
              safeSetState(() {});
              FFAppState().question = FFAppState().question + -1;
              safeSetState(() {});
            } else {
              _model.isAnswered = false;
              safeSetState(() {});
              FFAppState().question = FFAppState().question + 1;
              safeSetState(() {});
            }
          }
        },
        child: Container(
          width: double.infinity,
          height: 60.0,
          decoration: BoxDecoration(
            color: valueOrDefault<Color>(
              () {
                if (_model.isAnswered == true) {
                  return FlutterFlowTheme.of(context).primary;
                } else if (_model.isAnswered == false) {
                  return FlutterFlowTheme.of(context).primary;
                } else {
                  return Colors.transparent;
                }
              }(),
              const Color(0x00FFFFFF),
            ),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0),
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
            border: Border.all(
              color: valueOrDefault<Color>(
                () {
                  if (_model.isAnswered == true) {
                    return FlutterFlowTheme.of(context).primary;
                  } else if (_model.isAnswered == false) {
                    return FlutterFlowTheme.of(context).primary;
                  } else {
                    return Colors.black;
                  }
                }(),
                Colors.black,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 16.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: 36.0,
                    height: 36.0,
                    decoration: BoxDecoration(
                      color: valueOrDefault<Color>(
                        () {
                          if (_model.isAnswered == true) {
                            return FlutterFlowTheme.of(context).primary;
                          } else if (_model.isAnswered == false) {
                            return FlutterFlowTheme.of(context).primary;
                          } else {
                            return Colors.transparent;
                          }
                        }(),
                        Colors.transparent,
                      ),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: valueOrDefault<Color>(
                          () {
                            if (_model.isAnswered == true) {
                              return FlutterFlowTheme.of(context).info;
                            } else if (_model.isAnswered == false) {
                              return FlutterFlowTheme.of(context).info;
                            } else {
                              return Colors.black;
                            }
                          }(),
                          Colors.black,
                        ),
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget.questionNum,
                          'questionNum',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.questionName,
                      '[questionName]',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
