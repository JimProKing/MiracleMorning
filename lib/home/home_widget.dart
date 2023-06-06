import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'adBannerOnPageLoadAnimation': AnimationInfo(
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
    _model = createModel(context, () => HomeModel());

    _model.textController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<List<MorningUserRow>>(
      future: MorningUserTable().querySingleRow(
        queryFn: (q) => q.order('id'),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  color: FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<MorningUserRow> homeMorningUserRowList = snapshot.data!;
        final homeMorningUserRow = homeMorningUserRowList.isNotEmpty
            ? homeMorningUserRowList.first
            : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Color(0xDFB498E1),
            automaticallyImplyLeading: false,
            title: Text(
              '좋은하루 보내요 😊',
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
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (!FFAppState().loged)
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFF75C2EB), Color(0xFFE2E1CC)],
                            stops: [0.0, 1.0],
                            begin: AlignmentDirectional(0.0, -1.0),
                            end: AlignmentDirectional(0, 1.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 8.0, 10.0, 0.0),
                                  child: Text(
                                    '처음 사용이시라면, 이름과 목표 기상시간을 알려주세요 😆',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 8.0, 10.0, 0.0),
                                  child: Text(
                                    '* 이름은 한번 입력 시 변경할 수 없어요. 신중하게 입력해주세요!\n(작성 후 이 창은 사라집니다.)',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.textController,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: '[이름을 입력하세요.]',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      validator: _model.textControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        valueOrDefault<String>(
                                          dateTimeFormat(
                                            'jm',
                                            _model.datePicked,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          ),
                                          '00:00:00',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () async {
                                          final _datePickedTime =
                                              await showTimePicker(
                                            context: context,
                                            initialTime: TimeOfDay.fromDateTime(
                                                getCurrentTimestamp),
                                          );
                                          if (_datePickedTime != null) {
                                            setState(() {
                                              _model.datePicked = DateTime(
                                                getCurrentTimestamp.year,
                                                getCurrentTimestamp.month,
                                                getCurrentTimestamp.day,
                                                _datePickedTime.hour,
                                                _datePickedTime.minute,
                                              );
                                            });
                                          }
                                        },
                                        text: '시간 선택',
                                        icon: Icon(
                                          Icons.access_time,
                                          size: 15.0,
                                        ),
                                        options: FFButtonOptions(
                                          width: 130.0,
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: Color(0xFFC2BEE0),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            width: 3.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 8.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      setState(() {
                                        FFAppState().name =
                                            _model.textController.text;
                                        FFAppState().loged = true;
                                        FFAppState().GoalTime =
                                            valueOrDefault<String>(
                                          _model.datePicked?.toString(),
                                          '00:00:00',
                                        );
                                        FFAppState().id = functions
                                            .makeID(homeMorningUserRow!.id)!;
                                      });
                                      await MorningUserTable().insert({
                                        'id': FFAppState().id,
                                        'name': FFAppState().name,
                                        'goal': supaSerialize<DateTime>(
                                            _model.datePicked),
                                      });
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('ID 확인'),
                                            content: Text(functions
                                                .msgContent(FFAppState().id)!),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );

                                      context.pushNamed('Main');
                                    },
                                    text: '시작하기!',
                                    options: FFButtonOptions(
                                      width: 130.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFF5EA8F0),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        width: 3.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                if (FFAppState().loged)
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 8.0),
                                child: Text(
                                  '당신의 하루를 기적으로 채워보세요.',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 24.0,
                                      ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(13.0),
                                child: Image.asset(
                                  'assets/images/img.png',
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('howto');
                                  },
                                  text: '사용방법',
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFFC3A6D1),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      width: 3.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                if (FFAppState().loged)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 8.0),
                              child: Text(
                                '내 미라클 모닝 횟수',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF95A1AC),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                            Text(
                              FFAppState().total.toString(),
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF090F13),
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 8.0),
                              child: Text(
                                '회원수',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF95A1AC),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                FFAppState().id.toString(),
                                '0',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF090F13),
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 8.0),
                              child: Text(
                                'Status',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF95A1AC),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                            Text(
                              'Good',
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF4B39EF),
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: Container(
                    height: 200.0,
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 50.0, 0.0, 0.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 1.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF1F4F8),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 60.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'You can run.',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF39D2C0),
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 8.0, 16.0, 24.0),
                                      child: Text(
                                        '당신의 하루에 활력을 더해보세요.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Color(0xFF95A1AC),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            if (FFAppState().loged)
                              Align(
                                alignment: AlignmentDirectional(0.0, -0.75),
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF39D2C0),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 7.0,
                                        color: Color(0x8E000000),
                                        offset: Offset(0.0, 3.0),
                                      )
                                    ],
                                    shape: BoxShape.circle,
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed('Main');
                                    },
                                    child: Icon(
                                      Icons.power_settings_new_rounded,
                                      color: Colors.white,
                                      size: 50.0,
                                    ),
                                  ),
                                ),
                              ),
                            if (FFAppState().loged)
                              Align(
                                alignment: AlignmentDirectional(0.0, -0.75),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(() {
                                      FFAppState().loged = false;
                                    });

                                    context.pushNamed('Home');
                                  },
                                  child: Container(
                                    width: 80.0,
                                    height: 80.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 7.0,
                                          color: Color(0x8E000000),
                                          offset: Offset(0.0, 3.0),
                                        )
                                      ],
                                      shape: BoxShape.circle,
                                    ),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        setState(() {
                                          FFAppState().loged = false;
                                          FFAppState().total = 0;
                                        });

                                        context.pushNamed('Home');
                                      },
                                      child: Icon(
                                        Icons.power_settings_new_rounded,
                                        color: Colors.white,
                                        size: 50.0,
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
                Text(
                  '\n\n\n\n',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFC3A6D1),
                  ),
                ),
                if (FFAppState().isDeploy)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                    child: FlutterFlowAdBanner(
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: 50.0,
                      showsTestAd: false,
                      iOSAdUnitID: 'ca-app-pub-8145739580879928/9389970869',
                      androidAdUnitID: 'ca-app-pub-8145739580879928/3821949416',
                    ).animateOnPageLoad(
                        animationsMap['adBannerOnPageLoadAnimation']!),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
