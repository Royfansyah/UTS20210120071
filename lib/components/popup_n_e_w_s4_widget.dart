import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'popup_n_e_w_s4_model.dart';
export 'popup_n_e_w_s4_model.dart';

class PopupNEWS4Widget extends StatefulWidget {
  const PopupNEWS4Widget({Key? key}) : super(key: key);

  @override
  _PopupNEWS4WidgetState createState() => _PopupNEWS4WidgetState();
}

class _PopupNEWS4WidgetState extends State<PopupNEWS4Widget> {
  late PopupNEWS4Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopupNEWS4Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
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
                height: 58,
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(9, 9, 0, 0),
                      child: Text(
                        'April 4th Patch Notes Now Live!',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Nunito',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(9, 0, 0, 0),
                      child: Text(
                        'Posted, 5 April 2022',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Nunito',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ],
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(9, 5, 0, 0),
                    child: Text(
                      '📢 Today\'s update includes several fixes and optimizations to improve stability\n\nSTABILITY :\n\n- Fixed issue with the character getting stuck in item pickup animation\n- Fixed issue with character not being able to open item crates in some cases\n- Fixed issue with perk selection getting reset after installing the latest update\n- Fixed issue with being able to change level in challenges lobby\n- Fixed issue with unique ACW and Sword getting unlocked only after game restart\n- Fixed issue with prestige perks not working and overriding class perks in some cases\n- Fixed issue with weapons not leveling up in Horde mode\n- Various fixes and improvements\n- Fixed gameplay crashes',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Nunito',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            fontSize: 15,
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
    );
  }
}
