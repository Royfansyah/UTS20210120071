import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import 'popup_w_w_wiki_tashaun_model.dart';
export 'popup_w_w_wiki_tashaun_model.dart';

class PopupWWWikiTashaunWidget extends StatefulWidget {
  const PopupWWWikiTashaunWidget({Key? key}) : super(key: key);

  @override
  _PopupWWWikiTashaunWidgetState createState() =>
      _PopupWWWikiTashaunWidgetState();
}

class _PopupWWWikiTashaunWidgetState extends State<PopupWWWikiTashaunWidget> {
  late PopupWWWikiTashaunModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopupWWWikiTashaunModel());
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
                      'Tashaun Burnell',
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
                                        'assets/images/Tashaun_Burnell1.webp',
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
                                  'assets/images/Tashaun_Burnell1.webp',
                                  width: 260,
                                  height: 300,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '\"You wanna save someone, save yourself.\"',
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
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 0),
                    child: Text(
                      '\"Tashaun was a NYC firefighter. He survived the September 11 attacks but was plagued with survivor guilt and post traumatic stress disorder. For Tashaun, the Great Panic felt more like a change of scenery than a cataclysm.\"',
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
                      'An NYC firefighter, surviving the 9/11 attacks left him with guilt over it and PTSD. The outbreak\'s more of a change of scenery to him than anything else.\n\n- Black Dude Dies First: Averted; Tashaun is the only black person in his engine company and is the last man alive.\n- The Cynic: Due to his experience in 9/11 and with the pandemic, Tashaun has a very cynical worldview. He believes good deeds are punished and that every man is for himself.\n- The Friend Nobody Likes: Various quips during the New York campaign suggest the rest of the group dislikes him for his selfish behavior but are stuck together with him.\n- Ghetto Name: Tashaun.\n- Jerkass Has a Point:\n  *He\'s correct that the subway is their  \n    best option to get out of the city, but  \n    that doesn\'t justify threatening Bunko. \n    Applies in-universe, because Angel \n    states he doesn\'t like him, but notes that \n    he has a point.\n  *When their boat runs out of gas, Angel \n    suggests refueling it, but Tashaun shuts \n    him down because they\'d never be able \n    to carry back the amount needed for it.\n- Knight in Sour Armor: Tashaun is cynical but still a cooperative and helpful team member to his fellow survivors. Though he does threaten to leave Bunko behind for not wanting to go to the subway.\nPost-Historical Trauma: 9/11 survivor and firefighter.',
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
