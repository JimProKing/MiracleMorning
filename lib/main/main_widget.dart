import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/admob_util.dart' as admob;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_model.dart';
export 'main_model.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> with TickerProviderStateMixin {
  late MainModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  final animationsMap = {
    'adBannerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation7': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation8': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation9': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation10': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation11': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation12': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation13': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation14': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation15': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation16': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation17': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation18': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation19': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation20': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation21': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation22': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation23': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation24': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation25': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation26': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation27': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation28': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation29': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation30': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation31': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation32': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation33': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation34': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation35': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation36': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation37': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation38': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation39': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 5000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation40': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation41': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation42': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation43': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation44': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation45': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation46': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation47': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation48': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation49': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation50': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation51': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation52': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation53': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation54': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation55': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation56': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation57': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation58': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation59': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation60': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation61': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation62': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation63': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation64': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation65': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation66': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.now = functions.newCustomFunction2();
      _model.nday = functions.calAllDay(_model.yr!, _model.month!);
    });

    _model.textController ??= TextEditingController();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF1F4F8),
        appBar: AppBar(
          backgroundColor: Color(0xDFB498E1),
          automaticallyImplyLeading: false,
          title: Text(
            '미라클 모닝',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 13.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 0.0),
                    child: Text(
                      '미라클모닝 내역 확인',
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Outfit',
                                color: Color(0xFF0F1113),
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await launchURL('https://open.kakao.com/o/gHUHX78e');
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/kakao.png',
                        width: 50.0,
                        height: 50.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 250.0,
              decoration: BoxDecoration(
                color: Color(0xFFF1F4F8),
              ),
              child: ListView(
                padding: EdgeInsets.zero,
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 12.0, 12.0),
                    child: Container(
                      width: 230.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x34090F13),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 140.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF39D2C0),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(12.0),
                                topRight: Radius.circular(12.0),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 12.0, 12.0, 12.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 36.0,
                                    height: 36.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x98FFFFFF),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Icon(
                                      Icons.more_time,
                                      color: Colors.white,
                                      size: 20.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: Text(
                                      '금일 미라클모닝 내역',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 20.0, 12.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('today');
                                  },
                                  text: '상세보기',
                                  options: FFButtonOptions(
                                    width: 130.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFF39D2C0),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 16.0, 12.0),
                    child: Container(
                      width: 230.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x34090F13),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 140.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFEE8B60),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(12.0),
                                topRight: Radius.circular(12.0),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 12.0, 12.0, 12.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 36.0,
                                    height: 36.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x98FFFFFF),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Icon(
                                      Icons.access_time_rounded,
                                      color: Colors.white,
                                      size: 20.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: Text(
                                      '내 미라클모닝 내역',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 20.0, 12.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('McalenderList');
                                  },
                                  text: '상세보기',
                                  options: FFButtonOptions(
                                    width: 130.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFFEE8B60),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 0.0),
              child: Text(
                '미라클 모닝',
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF0F1113),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 450.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 6.0,
                      color: Color(0x1B090F13),
                      offset: Offset(0.0, -2.0),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: DefaultTabController(
                    length: 2,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment(0.0, 0),
                          child: FlutterFlowButtonTabBar(
                            useToggleButtonStyle: false,
                            isScrollable: true,
                            labelStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF0F1113),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ),
                            unselectedLabelStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF0F1113),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ),
                            labelColor: Color(0xFF39DAEF),
                            unselectedLabelColor: Color(0xFF57636C),
                            borderWidth: 0.0,
                            borderRadius: 0.0,
                            elevation: 0.0,
                            tabs: [
                              Tab(
                                text: '미라클 모닝   ',
                              ),
                              Tab(
                                text: '공부/자기개발   ',
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 16.0, 12.0),
                                    child: ListView(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 12.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              border: Border.all(
                                                color: Color(0xFFE0E3E7),
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 12.0, 12.0, 12.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '기상 완료!',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF0F1113),
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 4.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      '금일 목표 시간을 체크하세요.',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: Color(
                                                                    0xFF57636C),
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                  ),
                                                  Divider(
                                                    height: 24.0,
                                                    thickness: 1.0,
                                                    color: Color(0xFFE0E3E7),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Goal',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              color: Color(
                                                                  0xFF0F1113),
                                                              fontSize: 14.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: FutureBuilder<
                                                              List<
                                                                  MorningUserRow>>(
                                                            future: MorningUserTable()
                                                                .querySingleRow(
                                                              queryFn: (q) =>
                                                                  q.eq(
                                                                'id',
                                                                FFAppState().id,
                                                              ),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<MorningUserRow>
                                                                  textMorningUserRowList =
                                                                  snapshot
                                                                      .data!;
                                                              final textMorningUserRow =
                                                                  textMorningUserRowList
                                                                          .isNotEmpty
                                                                      ? textMorningUserRowList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  final _datePickedTime =
                                                                      await showTimePicker(
                                                                    context:
                                                                        context,
                                                                    initialTime:
                                                                        TimeOfDay.fromDateTime(
                                                                            getCurrentTimestamp),
                                                                  );
                                                                  if (_datePickedTime !=
                                                                      null) {
                                                                    setState(
                                                                        () {
                                                                      _model.datePicked =
                                                                          DateTime(
                                                                        getCurrentTimestamp
                                                                            .year,
                                                                        getCurrentTimestamp
                                                                            .month,
                                                                        getCurrentTimestamp
                                                                            .day,
                                                                        _datePickedTime
                                                                            .hour,
                                                                        _datePickedTime
                                                                            .minute,
                                                                      );
                                                                    });
                                                                  }
                                                                  await MorningUserTable()
                                                                      .update(
                                                                    data: {
                                                                      'goal': supaSerialize<
                                                                              DateTime>(
                                                                          _model
                                                                              .datePicked),
                                                                    },
                                                                    matchingRows:
                                                                        (rows) =>
                                                                            rows.eq(
                                                                      'id',
                                                                      FFAppState()
                                                                          .id,
                                                                    ),
                                                                  );
                                                                  setState(() {
                                                                    FFAppState()
                                                                            .GoalTime =
                                                                        _model
                                                                            .datePicked!
                                                                            .toString();
                                                                  });
                                                                },
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    dateTimeFormat(
                                                                      'jm',
                                                                      textMorningUserRow
                                                                          ?.goal,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ),
                                                                    '0',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        color: Color(
                                                                            0xFF4B39EF),
                                                                        fontSize:
                                                                            14.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                      FFButtonWidget(
                                                        onPressed: FFAppState()
                                                                    .yrList
                                                                    .contains(
                                                                        _model
                                                                            .yr) &&
                                                                FFAppState()
                                                                    .monList
                                                                    .contains(_model
                                                                        .month) &&
                                                                FFAppState()
                                                                    .dayList
                                                                    .contains(
                                                                        _model
                                                                            .day)
                                                            ? null
                                                            : () async {
                                                                setState(() {
                                                                  _model.yr =
                                                                      functions
                                                                          .makeYr();
                                                                  _model.month =
                                                                      functions
                                                                          .makeMonth();
                                                                  _model.day =
                                                                      functions
                                                                          .makeDay();
                                                                });
                                                                await MorningCheckTable()
                                                                    .insert({
                                                                  'id':
                                                                      FFAppState()
                                                                          .id,
                                                                  'year':
                                                                      _model.yr,
                                                                  'month': _model
                                                                      .month,
                                                                  'day': _model
                                                                      .day,
                                                                  'name':
                                                                      FFAppState()
                                                                          .name,
                                                                });
                                                                setState(() {
                                                                  FFAppState()
                                                                      .addToYrList(
                                                                          _model
                                                                              .yr!);
                                                                  FFAppState()
                                                                      .addToMonList(
                                                                          _model
                                                                              .month!);
                                                                  FFAppState()
                                                                      .addToDayList(
                                                                          _model
                                                                              .day!);
                                                                  FFAppState()
                                                                          .total =
                                                                      FFAppState()
                                                                              .total +
                                                                          1;
                                                                });

                                                                admob
                                                                    .loadInterstitialAd(
                                                                  "ca-app-pub-8145739580879928/6128510562",
                                                                  "ca-app-pub-8145739580879928/1845650623",
                                                                  true,
                                                                );

                                                                _model.interstitialAdSuccess =
                                                                    await admob
                                                                        .showInterstitialAd();

                                                                setState(() {});
                                                              },
                                                        text: '미라클 모닝!',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 130.0,
                                                          height: 40.0,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color:
                                                              Color(0xFF39D2C0),
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          disabledColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .accent2,
                                                          disabledTextColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryBackground,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            border: Border.all(
                                              color: Color(0xFFE0E3E7),
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 12.0, 12.0, 12.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '내 기상 기록 확인',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xFF0F1113),
                                                        fontSize: 20.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 4.0, 5.0, 0.0),
                                                  child: Text(
                                                    '미라클 모닝을 얼마나 잘 해왔는지 확인해보세요 :)',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF57636C),
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                                Divider(
                                                  height: 24.0,
                                                  thickness: 1.0,
                                                  color: Color(0xFFE0E3E7),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        context.pushNamed(
                                                            'McalenderList');
                                                      },
                                                      child: Container(
                                                        width: 100.0,
                                                        height: 32.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF39D2C0),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      32.0),
                                                        ),
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Text(
                                                          '상세보기',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation1']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation2']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation3']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation4']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation5']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation6']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation7']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation8']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation9']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation10']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation11']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation12']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation13']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation14']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation15']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation16']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation17']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation18']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation19']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation20']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation21']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation22']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation23']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation24']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation25']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation26']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation27']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation28']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation29']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation30']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation31']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation32']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation33']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation34']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation35']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation36']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation37']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation38']!),
                                    ),
                                  if (FFAppState().isDeploy)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: false,
                                        iOSAdUnitID:
                                            'ca-app-pub-8145739580879928/9389970869',
                                        androidAdUnitID:
                                            'ca-app-pub-8145739580879928/3821949416',
                                      ).animateOnPageLoad(animationsMap[
                                          'adBannerOnPageLoadAnimation39']!),
                                    ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 16.0, 12.0),
                                    child: ListView(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 12.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              border: Border.all(
                                                color: Color(0xFFE0E3E7),
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 12.0, 12.0, 12.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '타이머',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF0F1113),
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      FlutterFlowTimer(
                                                        initialTime: _model
                                                            .timerMilliseconds,
                                                        getDisplayTime: (value) =>
                                                            StopWatchTimer
                                                                .getDisplayTime(
                                                                    value,
                                                                    milliSecond:
                                                                        false),
                                                        timer: _model
                                                            .timerController,
                                                        updateStateInterval:
                                                            Duration(
                                                                milliseconds:
                                                                    1000),
                                                        onChanged: (value,
                                                            displayTime,
                                                            shouldUpdate) {
                                                          _model.timerMilliseconds =
                                                              value;
                                                          _model.timerValue =
                                                              displayTime;
                                                          if (shouldUpdate)
                                                            setState(() {});
                                                        },
                                                        textAlign:
                                                            TextAlign.start,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                ),
                                                      ),
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          _model.timerController
                                                              .onExecute
                                                              .add(
                                                                  StopWatchExecute
                                                                      .start);
                                                        },
                                                        child: Icon(
                                                          Icons
                                                              .play_circle_outline_outlined,
                                                          color: Colors.black,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          _model.timerController
                                                              .onExecute
                                                              .add(
                                                                  StopWatchExecute
                                                                      .stop);
                                                        },
                                                        child: Icon(
                                                          Icons
                                                              .pause_circle_outline_rounded,
                                                          color: Colors.black,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Divider(
                                                    height: 24.0,
                                                    thickness: 1.0,
                                                    color: Color(0xFFE0E3E7),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            border: Border.all(
                                                              width: 3.0,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        0.0,
                                                                        5.0,
                                                                        0.0),
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .textController,
                                                              autofocus: true,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                hintText:
                                                                    '[내용을 입력하세요]',
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall,
                                                                enabledBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      const BorderRadius
                                                                          .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            4.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            4.0),
                                                                  ),
                                                                ),
                                                                focusedBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      const BorderRadius
                                                                          .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            4.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            4.0),
                                                                  ),
                                                                ),
                                                                errorBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      const BorderRadius
                                                                          .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            4.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            4.0),
                                                                  ),
                                                                ),
                                                                focusedErrorBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      const BorderRadius
                                                                          .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            4.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            4.0),
                                                                  ),
                                                                ),
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                              validator: _model
                                                                  .textControllerValidator
                                                                  .asValidator(
                                                                      context),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    13.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await MorningStudyTable()
                                                                .insert({
                                                              'id': FFAppState()
                                                                  .id,
                                                              'content': _model
                                                                  .textController
                                                                  .text,
                                                              'StudyHour': _model
                                                                  .timerValue,
                                                            });
                                                            _model
                                                                .timerController
                                                                .onExecute
                                                                .add(
                                                                    StopWatchExecute
                                                                        .reset);

                                                            setState(() {
                                                              _model
                                                                  .textController
                                                                  ?.clear();
                                                            });
                                                          },
                                                          child: Container(
                                                            width: 100.0,
                                                            height: 32.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFF39D2C0),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Text(
                                                              '저장',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        14.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            border: Border.all(
                                              color: Color(0xFFE0E3E7),
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 12.0, 12.0, 12.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '자기개발 내역 확인',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xFF0F1113),
                                                        fontSize: 20.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                                Divider(
                                                  height: 24.0,
                                                  thickness: 1.0,
                                                  color: Color(0xFFE0E3E7),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        context.pushNamed(
                                                            'Wcalender');
                                                      },
                                                      child: Container(
                                                        width: 100.0,
                                                        height: 32.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF39D2C0),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      32.0),
                                                        ),
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Text(
                                                          'Go',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '\n',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ],
                                    ),
                                  ),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation40']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation41']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation42']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation43']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation44']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation45']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation46']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation47']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation48']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation49']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation50']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation51']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation52']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation53']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation54']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation55']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation56']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation57']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation58']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation59']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation60']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation61']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation62']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation63']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation64']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation65']!),
                                  if (FFAppState().isDeploy)
                                    FlutterFlowAdBanner(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      height: 50.0,
                                      showsTestAd: false,
                                      iOSAdUnitID:
                                          'ca-app-pub-8145739580879928/9389970869',
                                      androidAdUnitID:
                                          'ca-app-pub-8145739580879928/3821949416',
                                    ).animateOnPageLoad(animationsMap[
                                        'adBannerOnPageLoadAnimation66']!),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
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
