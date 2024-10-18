import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'page_test_model.dart';
export 'page_test_model.dart';

class PageTestWidget extends StatefulWidget {
  const PageTestWidget({super.key});

  @override
  State<PageTestWidget> createState() => _PageTestWidgetState();
}

class _PageTestWidgetState extends State<PageTestWidget> {
  late PageTestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageTestModel());
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
        backgroundColor: const Color(0xFF161616),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0.0),
          child: AppBar(
            backgroundColor: const Color(0xFF333333),
            automaticallyImplyLeading: false,
            actions: const [],
            centerTitle: false,
            elevation: 0.0,
          ),
        ),
        body: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    child: PageView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: _model.pageViewController ??=
                          PageController(initialPage: 0),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: FlutterFlowWebView(
                                content: 'https://media.mmtc.ac.id/',
                                bypass: true,
                                width: MediaQuery.sizeOf(context).width * 0.95,
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                verticalScroll: false,
                                horizontalScroll: false,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: FlutterFlowWebView(
                                content: 'https://media.mmtc.ac.id/stream',
                                bypass: true,
                                width: MediaQuery.sizeOf(context).width * 0.95,
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                verticalScroll: false,
                                horizontalScroll: false,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: FlutterFlowWebView(
                                content: 'https://media.mmtc.ac.id/trending',
                                bypass: true,
                                width: MediaQuery.sizeOf(context).width * 0.95,
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                verticalScroll: false,
                                horizontalScroll: false,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: FlutterFlowWebView(
                                content: 'https://media.mmtc.ac.id/program/',
                                bypass: true,
                                width: MediaQuery.sizeOf(context).width * 0.95,
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                verticalScroll: false,
                                horizontalScroll: false,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: FlutterFlowWebView(
                                content:
                                    'https://media.mmtc.ac.id/company-profile/',
                                bypass: true,
                                width: MediaQuery.sizeOf(context).width * 0.95,
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                verticalScroll: false,
                                horizontalScroll: false,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 75.0,
                  child: custom_widgets.NavBar(
                    width: double.infinity,
                    height: 75.0,
                    onTap: (index) async {
                      await _model.pageViewController?.animateToPage(
                        index!,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    },
                  ),
                ),
              ],
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: Material(
                color: Colors.transparent,
                elevation: 5.0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24.0),
                    bottomRight: Radius.circular(24.0),
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(24.0),
                    bottomRight: Radius.circular(24.0),
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                  ),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 0.08,
                    decoration: const BoxDecoration(
                      color: Color(0xFF333333),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24.0),
                        bottomRight: Radius.circular(24.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: Image.asset(
                          'assets/images/Main_Color_W.png',
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 0.04,
                          fit: BoxFit.fitHeight,
                          alignment: const Alignment(0.0, 0.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
