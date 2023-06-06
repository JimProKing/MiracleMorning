import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'wcalender_model.dart';
export 'wcalender_model.dart';

class WcalenderWidget extends StatefulWidget {
  const WcalenderWidget({Key? key}) : super(key: key);

  @override
  _WcalenderWidgetState createState() => _WcalenderWidgetState();
}

class _WcalenderWidgetState extends State<WcalenderWidget>
    with TickerProviderStateMixin {
  late WcalenderModel _model;

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
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WcalenderModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().selectedDate = getCurrentTimestamp;
      });
    });
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xDFB498E1),
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Color(0x004B39EF),
                  borderRadius: 20.0,
                  borderWidth: 0.0,
                  buttonSize: 40.0,
                  fillColor: Color(0x00616161),
                  icon: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: FlutterFlowTheme.of(context).lineColor,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    context.safePop();
                  },
                ),
              ),
              Text(
                '자기개발 시간 확인',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlutterFlowCalendar(
                color: FlutterFlowTheme.of(context).alternate,
                weekFormat: false,
                weekStartsMonday: true,
                initialDate: FFAppState().selectedDate,
                onChange: (DateTimeRange? newSelectedDate) async {
                  _model.calendarSelectedDay = newSelectedDate;
                  setState(() {
                    FFAppState().selectedDate =
                        _model.calendarSelectedDay?.start;
                  });
                  setState(() {});
                },
                titleStyle: GoogleFonts.getFont(
                  'Roboto',
                ),
                dayOfWeekStyle: TextStyle(),
                dateStyle: TextStyle(),
                selectedDateStyle: TextStyle(),
                inactiveDateStyle: TextStyle(),
                locale: FFLocalizations.of(context).languageCode,
              ),
              Text(
                dateTimeFormat(
                  'MMMMEEEEd',
                  FFAppState().selectedDate,
                  locale: FFLocalizations.of(context).languageCode,
                ),
                style: FlutterFlowTheme.of(context).titleLarge,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 80.0),
                child: FutureBuilder<List<MorningStudyRow>>(
                  future: MorningStudyTable().queryRows(
                    queryFn: (q) => q
                        .eq(
                          'id',
                          FFAppState().id,
                        )
                        .eq(
                          'YMD',
                          supaSerialize<DateTime>(
                              _model.calendarSelectedDay?.start),
                        ),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      );
                    }
                    List<MorningStudyRow> listViewMorningStudyRowList =
                        snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewMorningStudyRowList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewMorningStudyRow =
                            listViewMorningStudyRowList[listViewIndex];
                        return ListTile(
                          title: Text(
                            listViewMorningStudyRow.content!,
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          subtitle: Text(
                            listViewMorningStudyRow.studyHour!,
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                          ),
                          trailing: Icon(
                            Icons.mood,
                            color: FlutterFlowTheme.of(context).accent2,
                            size: 20.0,
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          dense: false,
                        );
                      },
                    );
                  },
                ),
              ),
              if (FFAppState().isDeploy)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
                  child: FlutterFlowAdBanner(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: 50.0,
                    showsTestAd: false,
                    iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                    androidAdUnitID: 'ca-app-pub-8145739580879928/3821949416',
                  ).animateOnPageLoad(
                      animationsMap['adBannerOnPageLoadAnimation1']!),
                ),
              if (FFAppState().isDeploy)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
                  child: FlutterFlowAdBanner(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: 50.0,
                    showsTestAd: false,
                    iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                    androidAdUnitID: 'ca-app-pub-8145739580879928/3821949416',
                  ).animateOnPageLoad(
                      animationsMap['adBannerOnPageLoadAnimation2']!),
                ),
              if (FFAppState().isDeploy)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
                  child: FlutterFlowAdBanner(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: 50.0,
                    showsTestAd: false,
                    iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                    androidAdUnitID: 'ca-app-pub-8145739580879928/3821949416',
                  ).animateOnPageLoad(
                      animationsMap['adBannerOnPageLoadAnimation3']!),
                ),
              if (FFAppState().isDeploy)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
                  child: FlutterFlowAdBanner(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: 50.0,
                    showsTestAd: false,
                    iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                    androidAdUnitID: 'ca-app-pub-8145739580879928/3821949416',
                  ).animateOnPageLoad(
                      animationsMap['adBannerOnPageLoadAnimation4']!),
                ),
              if (FFAppState().isDeploy)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
                  child: FlutterFlowAdBanner(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: 50.0,
                    showsTestAd: false,
                    iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                    androidAdUnitID: 'ca-app-pub-8145739580879928/3821949416',
                  ).animateOnPageLoad(
                      animationsMap['adBannerOnPageLoadAnimation5']!),
                ),
              if (FFAppState().isDeploy)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
                  child: FlutterFlowAdBanner(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: 50.0,
                    showsTestAd: false,
                    iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                    androidAdUnitID: 'ca-app-pub-8145739580879928/3821949416',
                  ).animateOnPageLoad(
                      animationsMap['adBannerOnPageLoadAnimation6']!),
                ),
              if (FFAppState().isDeploy)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
                  child: FlutterFlowAdBanner(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: 50.0,
                    showsTestAd: false,
                    iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                    androidAdUnitID: 'ca-app-pub-8145739580879928/3821949416',
                  ).animateOnPageLoad(
                      animationsMap['adBannerOnPageLoadAnimation7']!),
                ),
              if (FFAppState().isDeploy)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
                  child: FlutterFlowAdBanner(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: 50.0,
                    showsTestAd: false,
                    iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                    androidAdUnitID: 'ca-app-pub-8145739580879928/3821949416',
                  ).animateOnPageLoad(
                      animationsMap['adBannerOnPageLoadAnimation8']!),
                ),
              if (FFAppState().isDeploy)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
                  child: FlutterFlowAdBanner(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: 50.0,
                    showsTestAd: false,
                    iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                    androidAdUnitID: 'ca-app-pub-8145739580879928/3821949416',
                  ).animateOnPageLoad(
                      animationsMap['adBannerOnPageLoadAnimation9']!),
                ),
              if (FFAppState().isDeploy)
                FlutterFlowAdBanner(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: 50.0,
                  showsTestAd: false,
                  iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                  androidAdUnitID: 'ca-app-pub-8145739580879928/3821949416',
                ).animateOnPageLoad(
                    animationsMap['adBannerOnPageLoadAnimation10']!),
              if (FFAppState().isDeploy)
                FlutterFlowAdBanner(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: 50.0,
                  showsTestAd: false,
                  iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                  androidAdUnitID: 'ca-app-pub-8145739580879928/3821949416',
                ).animateOnPageLoad(
                    animationsMap['adBannerOnPageLoadAnimation11']!),
              if (FFAppState().isDeploy)
                FlutterFlowAdBanner(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: 50.0,
                  showsTestAd: false,
                  iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                  androidAdUnitID: 'ca-app-pub-8145739580879928/3821949416',
                ).animateOnPageLoad(
                    animationsMap['adBannerOnPageLoadAnimation12']!),
              if (FFAppState().isDeploy)
                FlutterFlowAdBanner(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: 50.0,
                  showsTestAd: false,
                  iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                  androidAdUnitID: 'ca-app-pub-8145739580879928/3821949416',
                ).animateOnPageLoad(
                    animationsMap['adBannerOnPageLoadAnimation13']!),
              if (FFAppState().isDeploy)
                FlutterFlowAdBanner(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: 50.0,
                  showsTestAd: false,
                  iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                  androidAdUnitID: 'ca-app-pub-8145739580879928/3821949416',
                ).animateOnPageLoad(
                    animationsMap['adBannerOnPageLoadAnimation14']!),
              if (FFAppState().isDeploy)
                FlutterFlowAdBanner(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: 50.0,
                  showsTestAd: false,
                  iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                  androidAdUnitID: 'ca-app-pub-8145739580879928/3821949416',
                ).animateOnPageLoad(
                    animationsMap['adBannerOnPageLoadAnimation15']!),
              if (FFAppState().isDeploy)
                FlutterFlowAdBanner(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: 50.0,
                  showsTestAd: false,
                  iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                  androidAdUnitID: 'ca-app-pub-8145739580879928/3821949416',
                ).animateOnPageLoad(
                    animationsMap['adBannerOnPageLoadAnimation16']!),
              if (FFAppState().isDeploy)
                FlutterFlowAdBanner(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: 50.0,
                  showsTestAd: false,
                  iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                  androidAdUnitID: 'ca-app-pub-8145739580879928/3821949416',
                ).animateOnPageLoad(
                    animationsMap['adBannerOnPageLoadAnimation17']!),
              if (FFAppState().isDeploy)
                FlutterFlowAdBanner(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: 50.0,
                  showsTestAd: false,
                  iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                  androidAdUnitID: 'ca-app-pub-8145739580879928/3821949416',
                ).animateOnPageLoad(
                    animationsMap['adBannerOnPageLoadAnimation18']!),
            ],
          ),
        ),
      ),
    );
  }
}
