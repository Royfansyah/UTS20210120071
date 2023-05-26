import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'login_page_model.dart';
export 'login_page_model.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageModel());

    _model.idController ??= TextEditingController();
    _model.passwordController ??= TextEditingController();
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
        backgroundColor: Colors.black,
        body: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, -0.99),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 1,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.17, -0.96),
                        child: Image.asset(
                          'assets/images/ufpbn_1.jpg',
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 1,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.1),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 360,
                            decoration: BoxDecoration(
                              color: Color(0x7E000000),
                              borderRadius: BorderRadius.circular(10),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Color(0x4AE0E3E7),
                                width: 1,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 7, 0, 0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/images/wwzlogo.webp',
                                      width: 300,
                                      height: 76,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 7, 20, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          controller: _model.idController,
                                          autofillHints: [
                                            AutofillHints.username
                                          ],
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Username',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xDE030303),
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x4AE0E3E7),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            filled: true,
                                            fillColor: Color(0x36FFFFFF),
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 24, 0, 24),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Nunito',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .lineColor,
                                                fontSize: 14,
                                              ),
                                          textAlign: TextAlign.start,
                                          validator: _model
                                              .idControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 16, 20, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          controller: _model.passwordController,
                                          obscureText:
                                              !_model.passwordVisibility,
                                          decoration: InputDecoration(
                                            labelText: 'Password',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xDE030303),
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x4AE0E3E7),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            filled: true,
                                            fillColor: Color(0x36FFFFFF),
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 24, 0, 24),
                                            suffixIcon: InkWell(
                                              onTap: () => setState(
                                                () => _model
                                                        .passwordVisibility =
                                                    !_model.passwordVisibility,
                                              ),
                                              focusNode: FocusNode(
                                                  skipTraversal: true),
                                              child: Icon(
                                                _model.passwordVisibility
                                                    ? Icons.visibility_outlined
                                                    : Icons
                                                        .visibility_off_outlined,
                                                color: Color(0xFFE1E3E8),
                                                size: 23,
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Nunito',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .lineColor,
                                              ),
                                          validator: _model
                                              .passwordControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 12, 20, 16),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.7, 0.1),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  30, 7, 0, 0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              context.pushNamed('Dashboard');
                                            },
                                            text: 'Login!',
                                            icon: Icon(
                                              Icons.login,
                                              size: 15,
                                            ),
                                            options: FFButtonOptions(
                                              width: 127,
                                              height: 45.9,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 0),
                                              color: Color(0x36FFFFFF),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                      ),
                                              borderSide: BorderSide(
                                                color: Color(0x4AE0E3E7),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(0, -1),
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.68, 0.1),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 7, 30, 0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    context.pushNamed(
                                                      'RegisterPage',
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .rightToLeft,
                                                          duration: Duration(
                                                              milliseconds: 3),
                                                        ),
                                                      },
                                                    );
                                                  },
                                                  text: 'Register!',
                                                  icon: Icon(
                                                    Icons.how_to_reg,
                                                    size: 15,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: 130,
                                                    height: 47.2,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 0),
                                                    color: Color(0x36FFFFFF),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                        ),
                                                    borderSide: BorderSide(
                                                      color: Color(0x4AE0E3E7),
                                                      width: 2,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 5),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed('ForgotPage');
                                    },
                                    text: 'Forgot Password?',
                                    options: FFButtonOptions(
                                      width: 140,
                                      height: 40,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 0),
                                      color: Colors.transparent,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFC00A0A),
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      elevation: 0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
