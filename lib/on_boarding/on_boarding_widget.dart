import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'on_boarding_model.dart';
export 'on_boarding_model.dart';

class OnBoardingWidget extends StatefulWidget {
  const OnBoardingWidget({super.key});

  @override
  State<OnBoardingWidget> createState() => _OnBoardingWidgetState();
}

class _OnBoardingWidgetState extends State<OnBoardingWidget> {
  late OnBoardingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnBoardingModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!FFAppState().ShowOnBoard) {
        context.pushNamed('PageTest');
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                children: [
                  PageView(
                    controller: _model.pageViewController ??=
                        PageController(initialPage: 0),
                    onPageChanged: (_) => safeSetState(() {}),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/vnimc_1.png',
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 24.0, 24.0, 120.0),
                              child: Wrap(
                                spacing: 20.0,
                                runSpacing: 16.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await _model.pageViewController?.nextPage(
                                        duration: const Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                      if (_model.pageViewCurrentIndex == 3) {
                                        context.pushNamed('PageTest');
                                      }
                                    },
                                    text: 'Continue',
                                    icon: const Icon(
                                      Icons.keyboard_arrow_right_rounded,
                                      size: 24.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 161.0,
                                      height: 52.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding: const EdgeInsets.all(0.0),
                                      color: const Color(0xFFC0F503),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Inter',
                                            color: Colors.black,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      elevation: 10.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/49svh_2.png',
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 24.0, 24.0, 120.0),
                              child: Wrap(
                                spacing: 20.0,
                                runSpacing: 16.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await _model.pageViewController
                                          ?.previousPage(
                                        duration: const Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                    },
                                    text: '',
                                    icon: const Icon(
                                      Icons.keyboard_arrow_left_rounded,
                                      size: 24.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 52.0,
                                      height: 52.0,
                                      padding: const EdgeInsets.all(0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              6.0, 0.0, 0.0, 0.0),
                                      color: const Color(0xFFBDBDBD),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 10.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await _model.pageViewController?.nextPage(
                                        duration: const Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                      if (_model.pageViewCurrentIndex == 3) {
                                        context.pushNamed('PageTest');
                                      }
                                    },
                                    text: 'Continue',
                                    icon: const Icon(
                                      Icons.keyboard_arrow_right_rounded,
                                      size: 24.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 161.0,
                                      height: 52.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding: const EdgeInsets.all(0.0),
                                      color: const Color(0xFFC0F503),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Inter',
                                            color: Colors.black,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      elevation: 10.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/3a9k2_3.png',
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 24.0, 24.0, 120.0),
                              child: Wrap(
                                spacing: 20.0,
                                runSpacing: 16.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await _model.pageViewController
                                          ?.previousPage(
                                        duration: const Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                    },
                                    text: '',
                                    icon: const Icon(
                                      Icons.keyboard_arrow_left_rounded,
                                      size: 24.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 52.0,
                                      height: 52.0,
                                      padding: const EdgeInsets.all(0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              6.0, 0.0, 0.0, 0.0),
                                      color: const Color(0xFFBDBDBD),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 10.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await _model.pageViewController?.nextPage(
                                        duration: const Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                    },
                                    text: 'Continue',
                                    icon: const Icon(
                                      Icons.keyboard_arrow_right_rounded,
                                      size: 24.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 161.0,
                                      height: 52.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding: const EdgeInsets.all(0.0),
                                      color: const Color(0xFFC0F503),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Inter',
                                            color: Colors.black,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      elevation: 10.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/fijek_4.png',
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 24.0, 24.0, 110.0),
                              child: Wrap(
                                spacing: 20.0,
                                runSpacing: 16.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await _model.pageViewController
                                          ?.previousPage(
                                        duration: const Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                    },
                                    text: '',
                                    icon: const Icon(
                                      Icons.keyboard_arrow_left_rounded,
                                      size: 24.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 52.0,
                                      height: 52.0,
                                      padding: const EdgeInsets.all(0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              6.0, 0.0, 0.0, 0.0),
                                      color: const Color(0xFFBDBDBD),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 10.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await _model.pageViewController?.nextPage(
                                        duration: const Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                      if (_model.pageViewCurrentIndex == 3) {
                                        FFAppState().ShowOnBoard = false;

                                        context.pushNamed('PageTest');
                                      }
                                    },
                                    text: 'Let\'s Go',
                                    icon: const Icon(
                                      Icons.keyboard_arrow_right_rounded,
                                      size: 24.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 161.0,
                                      height: 52.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding: const EdgeInsets.all(0.0),
                                      color: const Color(0xFFC0F503),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Inter',
                                            color: Colors.black,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      elevation: 10.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.8),
                    child: smooth_page_indicator.SmoothPageIndicator(
                      controller: _model.pageViewController ??=
                          PageController(initialPage: 0),
                      count: 4,
                      axisDirection: Axis.horizontal,
                      onDotClicked: (i) async {
                        await _model.pageViewController!.animateToPage(
                          i,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                        safeSetState(() {});
                      },
                      effect: const smooth_page_indicator.SlideEffect(
                        spacing: 8.0,
                        radius: 8.0,
                        dotWidth: 8.0,
                        dotHeight: 8.0,
                        dotColor: Color(0xFFBDBDBD),
                        activeDotColor: Color(0xFF292929),
                        paintStyle: PaintingStyle.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
