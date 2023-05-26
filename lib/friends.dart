import '/component/popup_friends/popup_friends_widget.dart';
import '/component/popup_friends2/popup_friends2_widget.dart';
import '/component/popup_friends3/popup_friends3_widget.dart';
import '/component/popup_friends4/popup_friends4_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import 'friends_model.dart';
export 'friends_model.dart';

class FriendsWidget extends StatefulWidget {
  const FriendsWidget({Key? key}) : super(key: key);

  @override
  _FriendsWidgetState createState() => _FriendsWidgetState();
}

class _FriendsWidgetState extends State<FriendsWidget> {
  late FriendsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FriendsModel());

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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryText,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () async {
              context.pushNamed('Dashboard');
            },
          ),
          title: Text(
            'Friends',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Noto Serif',
                  color: Colors.white,
                  fontSize: 22,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/bcgrd.jpg',
              ).image,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 15),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
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
                          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                          child: TextFormField(
                            controller: _model.textController,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Search...',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF797979),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).accent3,
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                            validator: _model.textControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                        child: FlutterFlowIconButton(
                          borderColor: Color(0x00373737),
                          borderRadius: 20,
                          buttonSize: 45,
                          fillColor: Color(0x00373737),
                          icon: Icon(
                            Icons.search,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 24,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                indent: 13,
                endIndent: 13,
                color: FlutterFlowTheme.of(context).accent4,
              ),
              Container(
                width: 374,
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
                    color: FlutterFlowTheme.of(context).primaryText,
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(7, 2, 2, 2),
                          child: Container(
                            width: 50,
                            height: 50,
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
                                    child: FlutterFlowExpandedImageView(
                                      image: Image.asset(
                                        'assets/images/62fx62f.png',
                                        fit: BoxFit.contain,
                                      ),
                                      allowRotation: false,
                                      tag: 'imageTag1',
                                      useHeroAnimation: true,
                                    ),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: 'imageTag1',
                                transitionOnUserGestures: true,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
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
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Text(
                            'Sumbul',
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
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(-0.85, 0),
                        child: Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).success,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (bottomSheetContext) {
                              return GestureDetector(
                                onTap: () => FocusScope.of(context)
                                    .requestFocus(_unfocusNode),
                                child: Padding(
                                  padding: MediaQuery.of(bottomSheetContext)
                                      .viewInsets,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.22,
                                    child: PopupFriendsWidget(),
                                  ),
                                ),
                              );
                            },
                          ).then((value) => setState(() {}));
                        },
                        child: FaIcon(
                          FontAwesomeIcons.list,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: Container(
                  width: 374,
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
                      color: FlutterFlowTheme.of(context).primaryText,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(7, 2, 2, 2),
                            child: Container(
                              width: 50,
                              height: 50,
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
                                      child: FlutterFlowExpandedImageView(
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
                                    borderRadius: BorderRadius.circular(8),
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: Text(
                              'Promaster',
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
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(-0.85, 0),
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              color: Color(0xFFBD0F0F),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (bottomSheetContext) {
                                return GestureDetector(
                                  onTap: () => FocusScope.of(context)
                                      .requestFocus(_unfocusNode),
                                  child: Padding(
                                    padding: MediaQuery.of(bottomSheetContext)
                                        .viewInsets,
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.22,
                                      child: PopupFriends2Widget(),
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));
                          },
                          child: FaIcon(
                            FontAwesomeIcons.list,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: Container(
                  width: 374,
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
                      color: FlutterFlowTheme.of(context).primaryText,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(7, 2, 2, 2),
                            child: Container(
                              width: 50,
                              height: 50,
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
                                      child: FlutterFlowExpandedImageView(
                                        image: Image.asset(
                                          'assets/images/62fx62f.png',
                                          fit: BoxFit.contain,
                                        ),
                                        allowRotation: false,
                                        tag: 'imageTag3',
                                        useHeroAnimation: true,
                                      ),
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: 'imageTag3',
                                  transitionOnUserGestures: true,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: Text(
                              'Noobmaster',
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
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(-0.85, 0),
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              color: Color(0xFFBD0F0F),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (bottomSheetContext) {
                                return GestureDetector(
                                  onTap: () => FocusScope.of(context)
                                      .requestFocus(_unfocusNode),
                                  child: Padding(
                                    padding: MediaQuery.of(bottomSheetContext)
                                        .viewInsets,
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.22,
                                      child: PopupFriends3Widget(),
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));
                          },
                          child: FaIcon(
                            FontAwesomeIcons.list,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: Container(
                  width: 374,
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
                      color: FlutterFlowTheme.of(context).primaryText,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(7, 2, 2, 2),
                            child: Container(
                              width: 50,
                              height: 50,
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
                                      child: FlutterFlowExpandedImageView(
                                        image: Image.asset(
                                          'assets/images/62fx62f.png',
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
                                    borderRadius: BorderRadius.circular(8),
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: Text(
                              'Jagoan',
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
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(-0.85, 0),
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).success,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (bottomSheetContext) {
                                return GestureDetector(
                                  onTap: () => FocusScope.of(context)
                                      .requestFocus(_unfocusNode),
                                  child: Padding(
                                    padding: MediaQuery.of(bottomSheetContext)
                                        .viewInsets,
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.22,
                                      child: PopupFriends4Widget(),
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));
                          },
                          child: FaIcon(
                            FontAwesomeIcons.list,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 25,
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
    );
  }
}
