import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import 'popup_w_w_wiki_model.dart';
export 'popup_w_w_wiki_model.dart';

class PopupWWWikiWidget extends StatefulWidget {
  const PopupWWWikiWidget({Key? key}) : super(key: key);

  @override
  _PopupWWWikiWidgetState createState() => _PopupWWWikiWidgetState();
}

class _PopupWWWikiWidgetState extends State<PopupWWWikiWidget> {
  late PopupWWWikiModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopupWWWikiModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.991,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            FlutterFlowTheme.of(context).secondaryText,
            Color(0xFF252525)
          ],
          stops: [0, 1],
          begin: AlignmentDirectional(0, -1),
          end: AlignmentDirectional(0, 1),
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Color(0xFF969696),
          width: 1,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 24,
                decoration: BoxDecoration(
                  color: Color(0x00F1F4F8),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x33000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.84,
            decoration: BoxDecoration(
              color: Color(0x00F1F4F8),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(9, 9, 0, 0),
                    child: Text(
                      'Angel Flores',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Nunito',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(9, 0, 0, 0),
                    child: Text(
                      'New York',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Nunito',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(9, 0, 0, 0),
                    child: Text(
                      'Character',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Nunito',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Container(
                      width: 260,
                      height: 355,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            FlutterFlowTheme.of(context).secondaryText,
                            Color(0xFF252525)
                          ],
                          stops: [0, 1],
                          begin: AlignmentDirectional(0, -1),
                          end: AlignmentDirectional(0, 1),
                        ),
                        borderRadius: BorderRadius.circular(8),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          width: 1,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
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
                                        'assets/images/Angel_Flores1.webp',
                                        fit: BoxFit.contain,
                                      ),
                                      allowRotation: false,
                                      useHeroAnimation: false,
                                    ),
                                  ),
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'assets/images/Angel_Flores1.webp',
                                  width: 260,
                                  height: 300,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Text(
                              '\"I was born into this life.\"',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Nunito',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FontStyle.italic,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 0),
                    child: Text(
                      '\"Angel was a high-ranking member of the Latin Kings gang and a transit tunnel maintenance worker. When the outbreak hit, he was the only one of his crew who chose fight over flight, an instinct that has kept him alive ever since.\"',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Nunito',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 30, 15, 0),
                    child: Text(
                      'A Hispanic member of the Latin Kings gang, moonlighting as a transit tunnel maintenance worker. When the outbreak hit, he chose to fight over flight unlike the rest of his gang, and it\'s kept him alive ever since.\n\n- Acrofatic: Despite his girth, he has no issues keeping up with his fitter squadmates.\n- Dark and Troubled Past: A gang member that from his childhood grew up in a bad neighborhood, right down to being orphaned due to gang violence. It\'s implied in his backstory that he at least once had a parole hearing, as he\'s mocking the standard piece convicts give to the board.\n- Hidden Depths: Used to work maintenance in the tunnels, explaining his familiarity with the system. He\'s also familiar with New York\'s cultural landmarks, sharing some knowledge about the museum the group traverses.\n- Just a Gangster: In Angel’s backstory, he reveals that he never wished to leave his gang or reform.\n- Satisfied Street Rat: Angel was born into the Latin Kings and lost his father to gang violence but is grateful for these experiences because they gave him the strength and skills necessary to survive the Zeke apocalypse.\n- Tattooed Crook: A street thug with both of his arms covered in tattoos.',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
