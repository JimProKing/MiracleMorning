import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mcalender_list_model.dart';
export 'mcalender_list_model.dart';

class McalenderListWidget extends StatefulWidget {
  const McalenderListWidget({Key? key}) : super(key: key);

  @override
  _McalenderListWidgetState createState() => _McalenderListWidgetState();
}

class _McalenderListWidgetState extends State<McalenderListWidget>
    with TickerProviderStateMixin {
  late McalenderListModel _model;

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
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => McalenderListModel());

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
                '기상 내역 ',
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController1 ??=
                          FormFieldController<String>(
                        _model.dropDownValue1 ??= functions
                            .year(functions.makeYr()?.toString())
                            .toString(),
                      ),
                      options: [
                        '2023',
                        '2024',
                        '2025',
                        '2026',
                        '2027',
                        '2028',
                        '2029',
                        '2030',
                        '2031',
                        '2032',
                        '2033'
                      ],
                      onChanged: (val) =>
                          setState(() => _model.dropDownValue1 = val),
                      width: 180.0,
                      height: 50.0,
                      searchHintTextStyle: FlutterFlowTheme.of(context)
                          .bodyLarge
                          .override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 18.0,
                          ),
                      hintText: '연도',
                      searchHintText: 'Search for an item...',
                      fillColor: Color(0xFFEBDAF5),
                      elevation: 2.0,
                      borderColor: Color(0x9EEC9BBF),
                      borderWidth: 3.0,
                      borderRadius: 8.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                      hidesUnderline: true,
                      isSearchable: false,
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: FlutterFlowDropDown<String>(
                        controller: _model.dropDownValueController2 ??=
                            FormFieldController<String>(
                          _model.dropDownValue2 ??=
                              functions.makeMonth()?.toString(),
                        ),
                        options: [
                          '1',
                          '2',
                          '3',
                          '4',
                          '5',
                          '6',
                          '7',
                          '8',
                          '9',
                          '10',
                          '11',
                          '12'
                        ],
                        onChanged: (val) =>
                            setState(() => _model.dropDownValue2 = val),
                        width: 180.0,
                        height: 50.0,
                        searchHintTextStyle: FlutterFlowTheme.of(context)
                            .bodyLarge
                            .override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 18.0,
                            ),
                        hintText: '월',
                        searchHintText: 'Search for an item...',
                        fillColor: Color(0xFFEBDAF5),
                        elevation: 2.0,
                        borderColor: Color(0x9EEC9BBF),
                        borderWidth: 3.0,
                        borderRadius: 8.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            12.0, 4.0, 12.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: false,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(13.0),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).accent1,
                        width: 3.0,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: FutureBuilder<List<MorningCheckRow>>(
                              future: MorningCheckTable().queryRows(
                                queryFn: (q) => q
                                    .eq(
                                      'id',
                                      FFAppState().id,
                                    )
                                    .eq(
                                      'month',
                                      functions.month(_model.dropDownValue2),
                                    )
                                    .eq(
                                      'year',
                                      functions.year(_model.dropDownValue1),
                                    )
                                    .order('day', ascending: true),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                  );
                                }
                                List<MorningCheckRow>
                                    listViewMorningCheckRowList =
                                    snapshot.data!;
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listViewMorningCheckRowList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewMorningCheckRow =
                                        listViewMorningCheckRowList[
                                            listViewIndex];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 5.0),
                                          child: Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(13.0),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 5.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            listViewMorningCheckRow
                                                                .day
                                                                ?.toString(),
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 18.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        '일',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 18.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 5.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          '기상시간 : ',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 20.0,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          dateTimeFormat(
                                                            'jm',
                                                            functions.showdate(
                                                                listViewMorningCheckRow
                                                                    .createdAt),
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ),
                                                          '0',
                                                        ),
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
                                                                  fontSize:
                                                                      20.0,
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
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  '\n\n\n\n\n\n\n\n\n\n\n\n\n\n',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
                if (FFAppState().isDeploy)
                  Align(
                    alignment: AlignmentDirectional(0.1, 0.2),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: FlutterFlowAdBanner(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 50.0,
                        showsTestAd: false,
                        iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                        androidAdUnitID:
                            'ca-app-pub-8145739580879928/3821949416',
                      ).animateOnPageLoad(
                          animationsMap['adBannerOnPageLoadAnimation1']!),
                    ),
                  ),
                if (FFAppState().isDeploy)
                  Align(
                    alignment: AlignmentDirectional(0.1, 0.2),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: FlutterFlowAdBanner(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 50.0,
                        showsTestAd: false,
                        iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                        androidAdUnitID:
                            'ca-app-pub-8145739580879928/3821949416',
                      ).animateOnPageLoad(
                          animationsMap['adBannerOnPageLoadAnimation2']!),
                    ),
                  ),
                if (FFAppState().isDeploy)
                  Align(
                    alignment: AlignmentDirectional(0.1, 0.2),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: FlutterFlowAdBanner(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 50.0,
                        showsTestAd: false,
                        iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                        androidAdUnitID:
                            'ca-app-pub-8145739580879928/3821949416',
                      ).animateOnPageLoad(
                          animationsMap['adBannerOnPageLoadAnimation3']!),
                    ),
                  ),
                if (FFAppState().isDeploy)
                  Align(
                    alignment: AlignmentDirectional(0.1, 0.2),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: FlutterFlowAdBanner(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 50.0,
                        showsTestAd: false,
                        iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                        androidAdUnitID:
                            'ca-app-pub-8145739580879928/3821949416',
                      ).animateOnPageLoad(
                          animationsMap['adBannerOnPageLoadAnimation4']!),
                    ),
                  ),
                if (FFAppState().isDeploy)
                  Align(
                    alignment: AlignmentDirectional(0.1, 0.2),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: FlutterFlowAdBanner(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 50.0,
                        showsTestAd: false,
                        iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                        androidAdUnitID:
                            'ca-app-pub-8145739580879928/3821949416',
                      ).animateOnPageLoad(
                          animationsMap['adBannerOnPageLoadAnimation5']!),
                    ),
                  ),
                if (FFAppState().isDeploy)
                  Align(
                    alignment: AlignmentDirectional(0.1, 0.2),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: FlutterFlowAdBanner(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 50.0,
                        showsTestAd: false,
                        iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                        androidAdUnitID:
                            'ca-app-pub-8145739580879928/3821949416',
                      ).animateOnPageLoad(
                          animationsMap['adBannerOnPageLoadAnimation6']!),
                    ),
                  ),
                if (FFAppState().isDeploy)
                  Align(
                    alignment: AlignmentDirectional(0.1, 0.2),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: FlutterFlowAdBanner(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 50.0,
                        showsTestAd: false,
                        iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                        androidAdUnitID:
                            'ca-app-pub-8145739580879928/3821949416',
                      ).animateOnPageLoad(
                          animationsMap['adBannerOnPageLoadAnimation7']!),
                    ),
                  ),
                if (FFAppState().isDeploy)
                  Align(
                    alignment: AlignmentDirectional(0.1, 0.2),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: FlutterFlowAdBanner(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 50.0,
                        showsTestAd: false,
                        iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                        androidAdUnitID:
                            'ca-app-pub-8145739580879928/3821949416',
                      ).animateOnPageLoad(
                          animationsMap['adBannerOnPageLoadAnimation8']!),
                    ),
                  ),
                if (FFAppState().isDeploy)
                  Align(
                    alignment: AlignmentDirectional(0.1, 0.2),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: FlutterFlowAdBanner(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 50.0,
                        showsTestAd: false,
                        iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                        androidAdUnitID:
                            'ca-app-pub-8145739580879928/3821949416',
                      ).animateOnPageLoad(
                          animationsMap['adBannerOnPageLoadAnimation9']!),
                    ),
                  ),
                if (FFAppState().isDeploy)
                  Align(
                    alignment: AlignmentDirectional(0.1, 0.2),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: FlutterFlowAdBanner(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 50.0,
                        showsTestAd: false,
                        iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                        androidAdUnitID:
                            'ca-app-pub-8145739580879928/3821949416',
                      ).animateOnPageLoad(
                          animationsMap['adBannerOnPageLoadAnimation10']!),
                    ),
                  ),
                if (FFAppState().isDeploy)
                  Align(
                    alignment: AlignmentDirectional(0.1, 0.2),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: FlutterFlowAdBanner(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 50.0,
                        showsTestAd: false,
                        iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                        androidAdUnitID:
                            'ca-app-pub-8145739580879928/3821949416',
                      ).animateOnPageLoad(
                          animationsMap['adBannerOnPageLoadAnimation11']!),
                    ),
                  ),
                if (FFAppState().isDeploy)
                  Align(
                    alignment: AlignmentDirectional(0.1, 0.2),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: FlutterFlowAdBanner(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 50.0,
                        showsTestAd: false,
                        iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                        androidAdUnitID:
                            'ca-app-pub-8145739580879928/3821949416',
                      ).animateOnPageLoad(
                          animationsMap['adBannerOnPageLoadAnimation12']!),
                    ),
                  ),
                if (FFAppState().isDeploy)
                  Align(
                    alignment: AlignmentDirectional(0.1, 0.2),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: FlutterFlowAdBanner(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 50.0,
                        showsTestAd: false,
                        iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                        androidAdUnitID:
                            'ca-app-pub-8145739580879928/3821949416',
                      ).animateOnPageLoad(
                          animationsMap['adBannerOnPageLoadAnimation13']!),
                    ),
                  ),
                if (FFAppState().isDeploy)
                  Align(
                    alignment: AlignmentDirectional(0.1, 0.2),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: FlutterFlowAdBanner(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 50.0,
                        showsTestAd: false,
                        iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                        androidAdUnitID:
                            'ca-app-pub-8145739580879928/3821949416',
                      ).animateOnPageLoad(
                          animationsMap['adBannerOnPageLoadAnimation14']!),
                    ),
                  ),
                if (FFAppState().isDeploy)
                  Align(
                    alignment: AlignmentDirectional(0.1, 0.2),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: FlutterFlowAdBanner(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 50.0,
                        showsTestAd: false,
                        iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                        androidAdUnitID:
                            'ca-app-pub-8145739580879928/3821949416',
                      ).animateOnPageLoad(
                          animationsMap['adBannerOnPageLoadAnimation15']!),
                    ),
                  ),
                if (FFAppState().isDeploy)
                  Align(
                    alignment: AlignmentDirectional(0.1, 0.2),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: FlutterFlowAdBanner(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 50.0,
                        showsTestAd: false,
                        iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                        androidAdUnitID:
                            'ca-app-pub-8145739580879928/3821949416',
                      ).animateOnPageLoad(
                          animationsMap['adBannerOnPageLoadAnimation16']!),
                    ),
                  ),
                if (FFAppState().isDeploy)
                  Align(
                    alignment: AlignmentDirectional(0.1, 0.2),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: FlutterFlowAdBanner(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 50.0,
                        showsTestAd: false,
                        iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                        androidAdUnitID:
                            'ca-app-pub-8145739580879928/3821949416',
                      ).animateOnPageLoad(
                          animationsMap['adBannerOnPageLoadAnimation17']!),
                    ),
                  ),
                if (FFAppState().isDeploy)
                  Align(
                    alignment: AlignmentDirectional(0.1, 0.2),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: FlutterFlowAdBanner(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 50.0,
                        showsTestAd: false,
                        iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                        androidAdUnitID:
                            'ca-app-pub-8145739580879928/3821949416',
                      ).animateOnPageLoad(
                          animationsMap['adBannerOnPageLoadAnimation18']!),
                    ),
                  ),
                if (FFAppState().isDeploy)
                  Align(
                    alignment: AlignmentDirectional(0.1, 0.2),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: FlutterFlowAdBanner(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 50.0,
                        showsTestAd: false,
                        iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                        androidAdUnitID:
                            'ca-app-pub-8145739580879928/3821949416',
                      ).animateOnPageLoad(
                          animationsMap['adBannerOnPageLoadAnimation19']!),
                    ),
                  ),
                if (FFAppState().isDeploy)
                  Align(
                    alignment: AlignmentDirectional(0.1, 0.2),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: FlutterFlowAdBanner(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 50.0,
                        showsTestAd: false,
                        iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                        androidAdUnitID:
                            'ca-app-pub-8145739580879928/3821949416',
                      ).animateOnPageLoad(
                          animationsMap['adBannerOnPageLoadAnimation20']!),
                    ),
                  ),
                if (FFAppState().isDeploy)
                  Align(
                    alignment: AlignmentDirectional(0.1, 0.2),
                    child: FlutterFlowAdBanner(
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: 50.0,
                      showsTestAd: false,
                      iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                      androidAdUnitID: 'ca-app-pub-8145739580879928/3821949416',
                    ).animateOnPageLoad(
                        animationsMap['adBannerOnPageLoadAnimation21']!),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
