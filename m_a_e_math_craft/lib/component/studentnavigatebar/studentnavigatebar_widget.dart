import '/auth/firebase_auth/auth_util.dart';
import '/backend/schema/enums/enums.dart';
import '/component/admin_navigate_bar/admin_navigate_bar_widget.dart';
import '/component/teacher_nav_bar/teacher_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'studentnavigatebar_model.dart';
export 'studentnavigatebar_model.dart';

class StudentnavigatebarWidget extends StatefulWidget {
  const StudentnavigatebarWidget({
    super.key,
    int? selectedPageIndex,
    bool? hidden,
  })  : selectedPageIndex = selectedPageIndex ?? 1,
        hidden = hidden ?? false;

  final int selectedPageIndex;
  final bool hidden;

  @override
  State<StudentnavigatebarWidget> createState() =>
      _StudentnavigatebarWidgetState();
}

class _StudentnavigatebarWidgetState extends State<StudentnavigatebarWidget>
    with TickerProviderStateMixin {
  late StudentnavigatebarModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StudentnavigatebarModel());

    animationsMap.addAll({
      'dividerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.6, 1.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.6, 1.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.6, 1.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 422.0,
          height: 60.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(0.0),
            ),
            shape: BoxShape.rectangle,
          ),
          child: Builder(
            builder: (context) {
              if (currentUserDocument?.role == Role.Student) {
                return Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          5.0,
                        ),
                      )
                    ],
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: const Color(0xFFECE7E7),
                    ),
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Opacity(
                              opacity: valueOrDefault<double>(
                                widget.selectedPageIndex == 1 ? 1.0 : 0.5,
                                1.0,
                              ),
                              child: FlutterFlowIconButton(
                                key: const ValueKey('HomeIcon_vg7y'),
                                borderRadius: 30.0,
                                borderWidth: 0.0,
                                buttonSize: 50.0,
                                fillColor: Colors.white,
                                icon: Icon(
                                  key: const ValueKey('HomeIcon_vg7y'),
                                  Icons.home_outlined,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  context.pushNamed('StudentHome');
                                },
                              ),
                            ),
                            if (widget.selectedPageIndex == 1)
                              SizedBox(
                                width: 30.0,
                                child: Divider(
                                  height: 2.0,
                                  thickness: 2.0,
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'dividerOnPageLoadAnimation1']!),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Opacity(
                              opacity: valueOrDefault<double>(
                                widget.selectedPageIndex == 2 ? 1.0 : 0.5,
                                2.0,
                              ),
                              child: FlutterFlowIconButton(
                                key: const ValueKey('AssessmentIcon_ciff'),
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                borderWidth: 0.0,
                                buttonSize: 50.0,
                                fillColor: Colors.white,
                                icon: Icon(
                                  key: const ValueKey('AssessmentIcon_ciff'),
                                  Icons.menu_book,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  context.pushNamed('Module');
                                },
                              ),
                            ),
                            if (widget.selectedPageIndex == 2)
                              SizedBox(
                                width: 30.0,
                                child: Divider(
                                  height: 2.0,
                                  thickness: 2.0,
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'dividerOnPageLoadAnimation2']!),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Opacity(
                              opacity: valueOrDefault<double>(
                                widget.selectedPageIndex == 4 ? 1.0 : 0.5,
                                4.0,
                              ),
                              child: FlutterFlowIconButton(
                                key: const ValueKey('SettingIcon_pmv0'),
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                borderWidth: 0.0,
                                buttonSize: 50.0,
                                fillColor: Colors.white,
                                icon: Icon(
                                  key: const ValueKey('SettingIcon_pmv0'),
                                  Icons.settings_outlined,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  context.pushNamed('Settings');
                                },
                              ),
                            ),
                            if (widget.selectedPageIndex == 4)
                              SizedBox(
                                width: 30.0,
                                child: Divider(
                                  height: 2.0,
                                  thickness: 2.0,
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'dividerOnPageLoadAnimation3']!),
                          ],
                        ),
                      ]
                          .divide(const SizedBox(width: 16.0))
                          .addToStart(const SizedBox(width: 16.0))
                          .addToEnd(const SizedBox(width: 16.0)),
                    ),
                  ),
                );
              } else if (currentUserDocument?.role == Role.Teacher) {
                return wrapWithModel(
                  model: _model.teacherNavBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const TeacherNavBarWidget(),
                );
              } else {
                return wrapWithModel(
                  model: _model.adminNavigateBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const AdminNavigateBarWidget(),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
