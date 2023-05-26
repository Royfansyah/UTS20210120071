import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'forgot_page_model.dart';
export 'forgot_page_model.dart';

class ForgotPageWidget extends StatefulWidget {
  const ForgotPageWidget({Key? key}) : super(key: key);

  @override
  _ForgotPageWidgetState createState() => _ForgotPageWidgetState();
}

class _ForgotPageWidgetState extends State<ForgotPageWidget> {
  late ForgotPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ForgotPageModel());

    _model.idController ??= TextEditingController();
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
        body: Container(
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
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.17, -0.96),
                  child: Image.asset(
                    'assets/images/peakpx1.jpg',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0.04),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 333,
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
                            padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
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
                          Container(
                            width: 339,
                            height: 81,
                            decoration: BoxDecoration(
                              color: Color(0x00373737),
                            ),
                            child: Text(
                              'If you have forgotten your password, please enter your account\'s email. You will receive an email that contains a link to set a new password.',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 7, 20, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: _model.idController,
                                    autofillHints: [AutofillHints.username],
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Email',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
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
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
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
                                          color: FlutterFlowTheme.of(context)
                                              .lineColor,
                                          fontSize: 14,
                                        ),
                                    textAlign: TextAlign.start,
                                    validator: _model.idControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 12, 20, 16),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.7, 0.1),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        30, 7, 0, 0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed('LoginPage');
                                      },
                                      text: 'Back',
                                      icon: Icon(
                                        Icons.arrow_back_rounded,
                                        size: 15,
                                      ),
                                      options: FFButtonOptions(
                                        width: 127,
                                        height: 45.9,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 0, 0),
                                        color: Color(0x36FFFFFF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                            ),
                                        borderSide: BorderSide(
                                          color: Color(0x4AE0E3E7),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, -1),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.68, 0.1),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 7, 30, 0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              context.pushNamed('LoginPage');
                                            },
                                            text: 'Submit!',
                                            options: FFButtonOptions(
                                              width: 130,
                                              height: 47.2,
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
                                    ],
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
