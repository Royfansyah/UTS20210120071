import '/component/popup_n_e_w_s/popup_n_e_w_s_widget.dart';
import '/component/popup_n_e_w_s2/popup_n_e_w_s2_widget.dart';
import '/component/popup_n_e_w_s3/popup_n_e_w_s3_widget.dart';
import '/component/popup_n_e_w_s4/popup_n_e_w_s4_widget.dart';
import '/component/popup_w_w_wiki/popup_w_w_wiki_widget.dart';
import '/component/popup_w_w_wiki_tashaun/popup_w_w_wiki_tashaun_widget.dart';
import '/components/popup_w_w_wiki_tashaun_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'dashboard_model.dart';
export 'dashboard_model.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({Key? key}) : super(key: key);

  @override
  _DashboardWidgetState createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  late DashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  int get pageViewCurrentIndex => _model.pageViewController != null &&
          _model.pageViewController!.hasClients &&
          _model.pageViewController!.page != null
      ? _model.pageViewController!.page!.round()
      : 0;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardModel());

    _model.textController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Drawer(
          elevation: 16,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color(0x00373737),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/kimiko_bcgrd1.jpg',
                ).image,
              ),
              border: Border.all(
                color: Color(0x00373737),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 45, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 288,
                        height: 58,
                        decoration: BoxDecoration(
                          color: Color(0x00373737),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              Navigator.pop(context);
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/wwzlogo.webp',
                                width: 300,
                                height: 200,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('Profile');
                        },
                        child: Container(
                          width: 276,
                          height: 63,
                          decoration: BoxDecoration(
                            color: Color(0x00373737),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Color(0x00373737),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        7, 2, 2, 2),
                                    child: Container(
                                      width: 68,
                                      height: 68,
                                      decoration: BoxDecoration(
                                        color: Color(0x00373737),
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 2,
                                        ),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            PageTransition(
                                              type: PageTransitionType.fade,
                                              child:
                                                  FlutterFlowExpandedImageView(
                                                image: Image.asset(
                                                  'assets/images/62fx62f.png',
                                                  fit: BoxFit.contain,
                                                ),
                                                allowRotation: false,
                                                tag: 'imageTag2',
                                                useHeroAnimation: true,
                                              ),
                                            ),
                                          );
                                        },
                                        child: Hero(
                                          tag: 'imageTag2',
                                          transitionOnUserGestures: true,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.asset(
                                              'assets/images/62fx62f.png',
                                              width: 300,
                                              height: 200,
                                              fit: BoxFit.scaleDown,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Text(
                                      '20210120071',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Nunito',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold,
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
                Divider(
                  height: 40,
                  thickness: 0,
                  color: Color(0x00373737),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('Friends');
                  },
                  child: Container(
                    width: 280,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Color(0x00373737),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x33000000),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color(0x00373737),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(19, 0, 0, 0),
                          child: Icon(
                            Icons.people_alt_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 35,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(18, 0, 0, 0),
                          child: Text(
                            'Friends',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Nunito',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width: 280,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Color(0x00373737),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x33000000),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color(0x00373737),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(19, 0, 0, 0),
                          child: Icon(
                            Icons.settings_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 35,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(18, 0, 0, 0),
                          child: Text(
                            'Settings',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Nunito',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width: 280,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Color(0x00373737),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x33000000),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color(0x00373737),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(19, 0, 0, 0),
                          child: Icon(
                            Icons.report_gmailerrorred_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 35,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(18, 0, 0, 0),
                          child: Text(
                            'Report',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Nunito',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width: 280,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Color(0x00373737),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x33000000),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color(0x00373737),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(32, 0, 0, 0),
                          child: FaIcon(
                            FontAwesomeIcons.info,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 25,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                          child: Text(
                            'About Us!',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Nunito',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 100),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.085,
                    decoration: BoxDecoration(
                      color: Color(0x00373737),
                    ),
                    child: FlutterFlowIconButton(
                      borderColor: Color(0x00373737),
                      borderRadius: 20,
                      borderWidth: 0,
                      buttonSize: 40,
                      fillColor: Color(0x00373737),
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 50,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
                Divider(
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                  color: Color(0x25757575),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.goNamed('LoginPage');
                  },
                  child: Container(
                    width: 280,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Color(0x00373737),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x33000000),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color(0x00373737),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(19, 0, 0, 0),
                          child: Icon(
                            Icons.logout,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 35,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(18, 0, 0, 0),
                          child: Text(
                            'Log Out!',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Nunito',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xFF0F0F0F),
          automaticallyImplyLeading: true,
          title: Text(
            'Welcome, 20210120071!',
            textAlign: TextAlign.justify,
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Noto Serif',
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/kimiko_bcgrd1.jpg',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    fit: BoxFit.cover,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.314,
                        child: Stack(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                              child: PageView(
                                controller: _model.pageViewController ??=
                                    PageController(initialPage: 0),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        6, 6, 6, 6),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            child: FlutterFlowExpandedImageView(
                                              image: Image.asset(
                                                'assets/images/tab0.png',
                                                fit: BoxFit.contain,
                                              ),
                                              allowRotation: false,
                                              tag: 'imageTag4',
                                              useHeroAnimation: true,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Hero(
                                        tag: 'imageTag4',
                                        transitionOnUserGestures: true,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/images/tab0.png',
                                            width: 100,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        6, 6, 6, 6),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            child: FlutterFlowExpandedImageView(
                                              image: Image.asset(
                                                'assets/images/tab2.jpg',
                                                fit: BoxFit.contain,
                                              ),
                                              allowRotation: false,
                                              tag: 'imageTag5',
                                              useHeroAnimation: true,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Hero(
                                        tag: 'imageTag5',
                                        transitionOnUserGestures: true,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/images/tab2.jpg',
                                            width: 100,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        6, 6, 6, 6),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            child: FlutterFlowExpandedImageView(
                                              image: Image.asset(
                                                'assets/images/tab3.jpg',
                                                fit: BoxFit.contain,
                                              ),
                                              allowRotation: false,
                                              tag: 'imageTag6',
                                              useHeroAnimation: true,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Hero(
                                        tag: 'imageTag6',
                                        transitionOnUserGestures: true,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/images/tab3.jpg',
                                            width: 100,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        6, 6, 6, 6),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            child: FlutterFlowExpandedImageView(
                                              image: Image.asset(
                                                'assets/images/tab4.jpg',
                                                fit: BoxFit.contain,
                                              ),
                                              allowRotation: false,
                                              tag: 'imageTag7',
                                              useHeroAnimation: true,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Hero(
                                        tag: 'imageTag7',
                                        transitionOnUserGestures: true,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/images/tab4.jpg',
                                            width: 100,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        6, 6, 6, 6),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            child: FlutterFlowExpandedImageView(
                                              image: Image.asset(
                                                'assets/images/tab5.jpg',
                                                fit: BoxFit.contain,
                                              ),
                                              allowRotation: false,
                                              tag: 'imageTag8',
                                              useHeroAnimation: true,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Hero(
                                        tag: 'imageTag8',
                                        transitionOnUserGestures: true,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/images/tab5.jpg',
                                            width: 100,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0.95),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child:
                                    smooth_page_indicator.SmoothPageIndicator(
                                  controller: _model.pageViewController ??=
                                      PageController(initialPage: 0),
                                  count: 5,
                                  axisDirection: Axis.horizontal,
                                  onDotClicked: (i) async {
                                    await _model.pageViewController!
                                        .animateToPage(
                                      i,
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.ease,
                                    );
                                  },
                                  effect:
                                      smooth_page_indicator.ExpandingDotsEffect(
                                    expansionFactor: 2,
                                    spacing: 8,
                                    radius: 16,
                                    dotWidth: 16,
                                    dotHeight: 15,
                                    dotColor:
                                        FlutterFlowTheme.of(context).accent2,
                                    activeDotColor: Color(0xDADB2020),
                                    paintStyle: PaintingStyle.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0.3),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.528,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(0),
                        shape: BoxShape.rectangle,
                      ),
                      child: DefaultTabController(
                        length: 5,
                        initialIndex: 0,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment(0, 0),
                              child: TabBar(
                                isScrollable: true,
                                labelColor:
                                    FlutterFlowTheme.of(context).lineColor,
                                unselectedLabelColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                indicatorColor: Color(0xFFA00707),
                                tabs: [
                                  Tab(
                                    text: 'NEWS',
                                  ),
                                  Tab(
                                    text: 'Guides',
                                  ),
                                  Tab(
                                    text: 'Gallery',
                                  ),
                                  Tab(
                                    text: 'WWWiki',
                                  ),
                                  Tab(
                                    text: 'Community',
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 5, 0, 0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.95,
                                            height: 165,
                                            decoration: BoxDecoration(
                                              color: Color(0x32757575),
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 4,
                                                  color: Color(0x33000000),
                                                  offset: Offset(0, 2),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                width: 1,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  7, 4, 0, 0),
                                                      child: Text(
                                                        'Against All Odds Update is Available Now!',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontSize: 17,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  7, 0, 0, 0),
                                                      child: Text(
                                                        '29 March 2023',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 19, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        width: 274,
                                                        height: 91,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x001C1C25),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(7,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            '*Full Patch Notes*\n\nNew Free Content\n- New Horde Mode Z Maps: New York...',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 60,
                                                                    0, 0),
                                                        child: Container(
                                                          width: 100,
                                                          height: 28,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x001C1C25),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        1,
                                                                        6,
                                                                        0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                await showModalBottomSheet(
                                                                  isScrollControlled:
                                                                      true,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  enableDrag:
                                                                      false,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (bottomSheetContext) {
                                                                    return GestureDetector(
                                                                      onTap: () => FocusScope.of(
                                                                              context)
                                                                          .requestFocus(
                                                                              _unfocusNode),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            MediaQuery.of(bottomSheetContext).viewInsets,
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              MediaQuery.of(context).size.height * 0.8,
                                                                          child:
                                                                              PopupNEWSWidget(),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    setState(
                                                                        () {}));
                                                              },
                                                              child:
                                                                  GradientText(
                                                                'READ MORE!',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      fontStyle:
                                                                          FontStyle
                                                                              .italic,
                                                                      decoration:
                                                                          TextDecoration
                                                                              .underline,
                                                                    ),
                                                                colors: [
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  Color(
                                                                      0xFF797979),
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                                ],
                                                                gradientDirection:
                                                                    GradientDirection
                                                                        .btt,
                                                                gradientType:
                                                                    GradientType
                                                                        .linear,
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
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 5, 0, 0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.95,
                                            height: 165,
                                            decoration: BoxDecoration(
                                              color: Color(0x32757575),
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 4,
                                                  color: Color(0x33000000),
                                                  offset: Offset(0, 2),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                width: 1,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  7, 4, 0, 0),
                                                      child: Text(
                                                        'February 20, 2023 - Patch Notes',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontSize: 17,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  7, 0, 0, 0),
                                                      child: Text(
                                                        '20 February 2023',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 19, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        width: 274,
                                                        height: 91,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x001C1C25),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(7,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'GENERAL :\n\n- Fixed the issue when the character model sometimes doesn\'t appear on..\n',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 60,
                                                                    0, 0),
                                                        child: Container(
                                                          width: 100,
                                                          height: 28,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x001C1C25),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        1,
                                                                        6,
                                                                        0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                await showModalBottomSheet(
                                                                  isScrollControlled:
                                                                      true,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  enableDrag:
                                                                      false,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (bottomSheetContext) {
                                                                    return GestureDetector(
                                                                      onTap: () => FocusScope.of(
                                                                              context)
                                                                          .requestFocus(
                                                                              _unfocusNode),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            MediaQuery.of(bottomSheetContext).viewInsets,
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              MediaQuery.of(context).size.height * 0.8,
                                                                          child:
                                                                              PopupNEWS2Widget(),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    setState(
                                                                        () {}));
                                                              },
                                                              child:
                                                                  GradientText(
                                                                'READ MORE!',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      fontStyle:
                                                                          FontStyle
                                                                              .italic,
                                                                      decoration:
                                                                          TextDecoration
                                                                              .underline,
                                                                    ),
                                                                colors: [
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  Color(
                                                                      0xFF797979),
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                                ],
                                                                gradientDirection:
                                                                    GradientDirection
                                                                        .btt,
                                                                gradientType:
                                                                    GradientType
                                                                        .linear,
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
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 5, 0, 0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.95,
                                            height: 165,
                                            decoration: BoxDecoration(
                                              color: Color(0x32757575),
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 4,
                                                  color: Color(0x33000000),
                                                  offset: Offset(0, 2),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                width: 1,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  7, 4, 0, 0),
                                                      child: Text(
                                                        'January 31 2023 Hotfix',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontSize: 17,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  7, 0, 0, 0),
                                                      child: Text(
                                                        '31 January 2023',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 19, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        width: 274,
                                                        height: 91,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x001C1C25),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(7,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'GENERAL :\n\n- Fixed when some players experience the error “save data is...',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 60,
                                                                    0, 0),
                                                        child: Container(
                                                          width: 100,
                                                          height: 28,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x001C1C25),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        1,
                                                                        6,
                                                                        0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                await showModalBottomSheet(
                                                                  isScrollControlled:
                                                                      true,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  enableDrag:
                                                                      false,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (bottomSheetContext) {
                                                                    return GestureDetector(
                                                                      onTap: () => FocusScope.of(
                                                                              context)
                                                                          .requestFocus(
                                                                              _unfocusNode),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            MediaQuery.of(bottomSheetContext).viewInsets,
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              MediaQuery.of(context).size.height * 0.8,
                                                                          child:
                                                                              PopupNEWS3Widget(),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    setState(
                                                                        () {}));
                                                              },
                                                              child:
                                                                  GradientText(
                                                                'READ MORE!',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      fontStyle:
                                                                          FontStyle
                                                                              .italic,
                                                                      decoration:
                                                                          TextDecoration
                                                                              .underline,
                                                                    ),
                                                                colors: [
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  Color(
                                                                      0xFF797979),
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                                ],
                                                                gradientDirection:
                                                                    GradientDirection
                                                                        .btt,
                                                                gradientType:
                                                                    GradientType
                                                                        .linear,
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
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 5, 0, 0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.95,
                                            height: 165,
                                            decoration: BoxDecoration(
                                              color: Color(0x32757575),
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 4,
                                                  color: Color(0x33000000),
                                                  offset: Offset(0, 2),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                width: 1,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  7, 4, 0, 0),
                                                      child: Text(
                                                        'April 4th Patch Notes Now Live!',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontSize: 17,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  7, 0, 0, 0),
                                                      child: Text(
                                                        '5 April 2022',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 19, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        width: 274,
                                                        height: 91,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x001C1C25),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(7,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            '📢 Today\'s update includes several fixes and optimizations to improve stability...',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 60,
                                                                    0, 0),
                                                        child: Container(
                                                          width: 100,
                                                          height: 28,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x001C1C25),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        1,
                                                                        6,
                                                                        0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                await showModalBottomSheet(
                                                                  isScrollControlled:
                                                                      true,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  enableDrag:
                                                                      false,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (bottomSheetContext) {
                                                                    return GestureDetector(
                                                                      onTap: () => FocusScope.of(
                                                                              context)
                                                                          .requestFocus(
                                                                              _unfocusNode),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            MediaQuery.of(bottomSheetContext).viewInsets,
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              MediaQuery.of(context).size.height * 0.8,
                                                                          child:
                                                                              PopupNEWS4Widget(),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    setState(
                                                                        () {}));
                                                              },
                                                              child:
                                                                  GradientText(
                                                                'READ MORE!',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      fontStyle:
                                                                          FontStyle
                                                                              .italic,
                                                                      decoration:
                                                                          TextDecoration
                                                                              .underline,
                                                                    ),
                                                                colors: [
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  Color(
                                                                      0xFF797979),
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                                ],
                                                                gradientDirection:
                                                                    GradientDirection
                                                                        .btt,
                                                                gradientType:
                                                                    GradientType
                                                                        .linear,
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
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Coming Soon!',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              fontSize: 20,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 5, 10, 0),
                                          child: MasonryGridView.count(
                                            crossAxisCount: 2,
                                            crossAxisSpacing: 10,
                                            mainAxisSpacing: 10,
                                            itemCount: 9,
                                            itemBuilder: (context, index) {
                                              return [
                                                () => InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await Navigator.push(
                                                          context,
                                                          PageTransition(
                                                            type:
                                                                PageTransitionType
                                                                    .fade,
                                                            child:
                                                                FlutterFlowExpandedImageView(
                                                              image:
                                                                  Image.asset(
                                                                'assets/images/1.jpeg',
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                              allowRotation:
                                                                  false,
                                                              tag: 'imageTag9',
                                                              useHeroAnimation:
                                                                  true,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      child: Hero(
                                                        tag: 'imageTag9',
                                                        transitionOnUserGestures:
                                                            true,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          child: Image.asset(
                                                            'assets/images/1.jpeg',
                                                            width: 300,
                                                            height: 117,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                () => InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await Navigator.push(
                                                          context,
                                                          PageTransition(
                                                            type:
                                                                PageTransitionType
                                                                    .fade,
                                                            child:
                                                                FlutterFlowExpandedImageView(
                                                              image:
                                                                  Image.asset(
                                                                'assets/images/2.jpeg',
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                              allowRotation:
                                                                  false,
                                                              tag: 'imageTag10',
                                                              useHeroAnimation:
                                                                  true,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      child: Hero(
                                                        tag: 'imageTag10',
                                                        transitionOnUserGestures:
                                                            true,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          child: Image.asset(
                                                            'assets/images/2.jpeg',
                                                            width: 300,
                                                            height: 200,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                () => InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await Navigator.push(
                                                          context,
                                                          PageTransition(
                                                            type:
                                                                PageTransitionType
                                                                    .fade,
                                                            child:
                                                                FlutterFlowExpandedImageView(
                                                              image:
                                                                  Image.asset(
                                                                'assets/images/5.jpeg',
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                              allowRotation:
                                                                  false,
                                                              tag: 'imageTag11',
                                                              useHeroAnimation:
                                                                  true,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      child: Hero(
                                                        tag: 'imageTag11',
                                                        transitionOnUserGestures:
                                                            true,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          child: Image.asset(
                                                            'assets/images/5.jpeg',
                                                            width: 300,
                                                            height: 144,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                () => InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await Navigator.push(
                                                          context,
                                                          PageTransition(
                                                            type:
                                                                PageTransitionType
                                                                    .fade,
                                                            child:
                                                                FlutterFlowExpandedImageView(
                                                              image:
                                                                  Image.asset(
                                                                'assets/images/peakpx1.jpg',
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                              allowRotation:
                                                                  false,
                                                              tag: 'imageTag12',
                                                              useHeroAnimation:
                                                                  true,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      child: Hero(
                                                        tag: 'imageTag12',
                                                        transitionOnUserGestures:
                                                            true,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          child: Image.asset(
                                                            'assets/images/peakpx1.jpg',
                                                            width: 300,
                                                            height: 305,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                () => InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await Navigator.push(
                                                          context,
                                                          PageTransition(
                                                            type:
                                                                PageTransitionType
                                                                    .fade,
                                                            child:
                                                                FlutterFlowExpandedImageView(
                                                              image:
                                                                  Image.asset(
                                                                'assets/images/ufpbn_1.jpg',
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                              allowRotation:
                                                                  false,
                                                              tag: 'imageTag13',
                                                              useHeroAnimation:
                                                                  true,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      child: Hero(
                                                        tag: 'imageTag13',
                                                        transitionOnUserGestures:
                                                            true,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          child: Image.asset(
                                                            'assets/images/ufpbn_1.jpg',
                                                            width: 300,
                                                            height: 362,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                () => InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await Navigator.push(
                                                          context,
                                                          PageTransition(
                                                            type:
                                                                PageTransitionType
                                                                    .fade,
                                                            child:
                                                                FlutterFlowExpandedImageView(
                                                              image:
                                                                  Image.asset(
                                                                'assets/images/kimiko_bcgrd1.jpg',
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                              allowRotation:
                                                                  false,
                                                              tag: 'imageTag14',
                                                              useHeroAnimation:
                                                                  true,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      child: Hero(
                                                        tag: 'imageTag14',
                                                        transitionOnUserGestures:
                                                            true,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          child: Image.asset(
                                                            'assets/images/kimiko_bcgrd1.jpg',
                                                            width: 300,
                                                            height: 340,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                () => InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await Navigator.push(
                                                          context,
                                                          PageTransition(
                                                            type:
                                                                PageTransitionType
                                                                    .fade,
                                                            child:
                                                                FlutterFlowExpandedImageView(
                                                              image:
                                                                  Image.asset(
                                                                'assets/images/3.jpeg',
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                              allowRotation:
                                                                  false,
                                                              tag: 'imageTag15',
                                                              useHeroAnimation:
                                                                  true,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      child: Hero(
                                                        tag: 'imageTag15',
                                                        transitionOnUserGestures:
                                                            true,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          child: Image.asset(
                                                            'assets/images/3.jpeg',
                                                            width: 300,
                                                            height: 211,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                () => InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await Navigator.push(
                                                          context,
                                                          PageTransition(
                                                            type:
                                                                PageTransitionType
                                                                    .fade,
                                                            child:
                                                                FlutterFlowExpandedImageView(
                                                              image:
                                                                  Image.asset(
                                                                'assets/images/hvfm7_5.jpg',
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                              allowRotation:
                                                                  false,
                                                              tag: 'imageTag16',
                                                              useHeroAnimation:
                                                                  true,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      child: Hero(
                                                        tag: 'imageTag16',
                                                        transitionOnUserGestures:
                                                            true,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          child: Image.asset(
                                                            'assets/images/hvfm7_5.jpg',
                                                            width: 300,
                                                            height: 285,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                () => InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await Navigator.push(
                                                          context,
                                                          PageTransition(
                                                            type:
                                                                PageTransitionType
                                                                    .fade,
                                                            child:
                                                                FlutterFlowExpandedImageView(
                                                              image:
                                                                  Image.asset(
                                                                'assets/images/4.jpeg',
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                              allowRotation:
                                                                  false,
                                                              tag: 'imageTag17',
                                                              useHeroAnimation:
                                                                  true,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      child: Hero(
                                                        tag: 'imageTag17',
                                                        transitionOnUserGestures:
                                                            true,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          child: Image.asset(
                                                            'assets/images/4.jpeg',
                                                            width: 300,
                                                            height: 184,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                              ][index]();
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 5, 5, 0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color: Color(0xFF797979),
                                                width: 1,
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                8, 0, 8, 0),
                                                    child: TextFormField(
                                                      controller:
                                                          _model.textController,
                                                      autofocus: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        hintText: 'Search...',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0xFF797979),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent3,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(20, 0,
                                                                    0, 0),
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
                                                                    .primaryText,
                                                              ),
                                                      validator: _model
                                                          .textControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 10, 0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Color(0x00373737),
                                                    borderRadius: 20,
                                                    buttonSize: 45,
                                                    fillColor:
                                                        Color(0x00373737),
                                                    icon: Icon(
                                                      Icons.search,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      size: 24,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'IconButton pressed ...');
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 10, 16, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Search Results :',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(4, 0, 0, 0),
                                                child: Text(
                                                  '0',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 10, 5, 0),
                                          child: ListView(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder:
                                                        (bottomSheetContext) {
                                                      return GestureDetector(
                                                        onTap: () => FocusScope
                                                                .of(context)
                                                            .requestFocus(
                                                                _unfocusNode),
                                                        child: Padding(
                                                          padding: MediaQuery.of(
                                                                  bottomSheetContext)
                                                              .viewInsets,
                                                          child: Container(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.8,
                                                            child:
                                                                PopupWWWikiWidget(),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      setState(() {}));
                                                },
                                                child: Container(
                                                  width: double.infinity,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.09,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x00373737),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(0, 2),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      width: 0,
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.2,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x00373737),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            width: 1,
                                                          ),
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          child: Image.asset(
                                                            'assets/images/Angel_Flores.png',
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.251,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                1,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 0,
                                                                    0, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Angel Flores',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'New York',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Character',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent3,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 7, 0, 0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder:
                                                          (bottomSheetContext) {
                                                        return GestureDetector(
                                                          onTap: () => FocusScope
                                                                  .of(context)
                                                              .requestFocus(
                                                                  _unfocusNode),
                                                          child: Padding(
                                                            padding: MediaQuery.of(
                                                                    bottomSheetContext)
                                                                .viewInsets,
                                                            child: Container(
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.8,
                                                              child:
                                                                  PopupWWWikiTashaunWidget(),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));
                                                  },
                                                  child: Container(
                                                    width: double.infinity,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.09,
                                                    decoration: BoxDecoration(
                                                      color: Color(0x00373737),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 4,
                                                          color:
                                                              Color(0x33000000),
                                                          offset: Offset(0, 2),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        width: 0,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.2,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              1,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x00373737),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              width: 1,
                                                            ),
                                                          ),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                            child: Image.asset(
                                                              'assets/images/Tashaun_Burnell.png',
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.251,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  1,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(12,
                                                                      0, 0, 0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Tashaun Burnell',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Nunito',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      fontSize:
                                                                          18,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                child: Text(
                                                                  'New York',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                child: Text(
                                                                  'Character',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent3,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.normal,
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
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 7, 0, 0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.09,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x00373737),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(0, 2),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      width: 0,
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.2,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x00373737),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            width: 1,
                                                          ),
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          child: Image.asset(
                                                            'assets/images/Bunko_Tatsumi.png',
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.251,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                1,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 0,
                                                                    0, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Bunko Tatsumi',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'New York',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Character',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent3,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 7, 0, 0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.09,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x00373737),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(0, 2),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      width: 0,
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.2,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x00373737),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            width: 1,
                                                          ),
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          child: Image.asset(
                                                            'assets/images/Arnetta_Larkin.png',
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.251,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                1,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 0,
                                                                    0, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Arnetta Larkin',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'New York',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Character',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent3,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 7, 0, 0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.09,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x00373737),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(0, 2),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      width: 0,
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.2,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x00373737),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            width: 1,
                                                          ),
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          child: Image.asset(
                                                            'assets/images/Judd_Whitaker.png',
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.251,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                1,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 0,
                                                                    0, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Judd Whitaker',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Jerusalem',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Character',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent3,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 7, 0, 0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.09,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x00373737),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(0, 2),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      width: 0,
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.2,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x00373737),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            width: 1,
                                                          ),
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          child: Image.asset(
                                                            'assets/images/Dina_Mizrahi.png',
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.251,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                1,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 0,
                                                                    0, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Dina Mizrahi',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Jerusalem',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Character',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent3,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 7, 0, 0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.09,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x00373737),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(0, 2),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      width: 0,
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.2,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x00373737),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            width: 1,
                                                          ),
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          child: Image.asset(
                                                            'assets/images/Ethan_Wolfe.png',
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.251,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                1,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 0,
                                                                    0, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Ethan Wolfe',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Jerusalem',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Character',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent3,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 7, 0, 0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.09,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x00373737),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(0, 2),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      width: 0,
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.2,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x00373737),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            width: 1,
                                                          ),
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          child: Image.asset(
                                                            'assets/images/Daniel_Alahey.png',
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.251,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                1,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 0,
                                                                    0, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Daniel Alahey',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Jerusalem',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Character',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent3,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 7, 0, 0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.09,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x00373737),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(0, 2),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      width: 0,
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.2,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x00373737),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            width: 1,
                                                          ),
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          child: Image.asset(
                                                            'assets/images/Oksana_Orlovskaya.png',
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.251,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                1,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 0,
                                                                    0, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Oksana Orlovskaya',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Moscow',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Character',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent3,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 7, 0, 0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.09,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x00373737),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(0, 2),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      width: 0,
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.2,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x00373737),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            width: 1,
                                                          ),
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          child: Image.asset(
                                                            'assets/images/Kimiko.png',
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.251,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                1,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 0,
                                                                    0, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Kimiko Nomura',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Tokyo / Kamchatka',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Character',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent3,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 7, 0, 0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.09,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x00373737),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(0, 2),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      width: 0,
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.2,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x00373737),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            width: 1,
                                                          ),
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          child: Image.asset(
                                                            'assets/images/Gunslinger_Icon.jpeg',
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.251,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                1,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 0,
                                                                    0, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Gunslinger',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Class',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent3,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 7, 0, 0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.09,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x00373737),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(0, 2),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      width: 0,
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.2,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x00373737),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            width: 1,
                                                          ),
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          child: Image.asset(
                                                            'assets/images/Hellraiser_Icon.jpeg',
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.251,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                1,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 0,
                                                                    0, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Hellraiser',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Class',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent3,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 7, 0, 0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.09,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x00373737),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(0, 2),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      width: 0,
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.2,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x00373737),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            width: 1,
                                                          ),
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          child: Image.asset(
                                                            'assets/images/Medic_Icon.png',
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.251,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                1,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 0,
                                                                    0, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Medic',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Class',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent3,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 7, 0, 0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.09,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x00373737),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(0, 2),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      width: 0,
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.2,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x00373737),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            width: 1,
                                                          ),
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          child: Image.asset(
                                                            'assets/images/Fixer_Icon.png',
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.251,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                1,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 0,
                                                                    0, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Fixer',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Class',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent3,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
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
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Coming Soon!',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              fontSize: 20,
                                            ),
                                      ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
