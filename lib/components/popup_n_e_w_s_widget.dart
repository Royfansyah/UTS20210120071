import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'popup_n_e_w_s_model.dart';
export 'popup_n_e_w_s_model.dart';

class PopupNEWSWidget extends StatefulWidget {
  const PopupNEWSWidget({Key? key}) : super(key: key);

  @override
  _PopupNEWSWidgetState createState() => _PopupNEWSWidgetState();
}

class _PopupNEWSWidgetState extends State<PopupNEWSWidget> {
  late PopupNEWSModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopupNEWSModel());
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
      height: MediaQuery.of(context).size.height * 1.014,
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
        mainAxisAlignment: MainAxisAlignment.start,
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
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(9, 9, 0, 0),
                        child: Text(
                          'Against All Odds Update is Available Now!',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                          'Posted, 23 March 2023',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                      '📢 The Against All Odds Update is now live on consoles and PC!\n\n📢 Huge hordes of Zekes are amassing within New York and Jerusalem on Horde Mode Z\n\n📢 New Mutators in Horde Mode Challenge Mode\n\n📢 Play as any survivor in any episode\n\n📢 New Premium and Bonus Weapon Skins\n\n📢 PlayStation 5 Dual Sense Controller Support\n\n📢 Join over 20 million survivors and experience more Zekes than you could ever imagine\n\n*Full Patch Notes*\n\nNew Free Content :\n- New Horde Mode Z Maps: New York and Jerusalem\n- 7 New Mutators for Horde Challenge Mode\n- You can now play any episode with any of your favorite survivors New Weapon: Baton\n\n\nNew Premium Content :\n- Deadly Vice Weapons Skin Pack\n- The Rat Packs Weapon Skins Bundle\n\n\nGeneral :\n- You can now fight rats using melee\n- AI can now carry heavy weapons\n- AI can now use melee finishers\n- Various gameplay bug fixes\n- Fixed crash on game startup on some AMD GPUs;\n- Fixed freezing while Shotgun Fiesta and Crossbow fiesta mutators are activated\n- Fixed issues with weapon perks for Drone class\n- Fixed infinite shots from RPGL4 weapon with Exterminator class\n- The DLC icon for the golden assault rifle has the correct color now\n- Fixed the issue with weapons not getting XP after completing an episode\n- Fixed issue when flying high perk makes M79 appear as silenced in GUI\n- Fixed an issue when M79 Grenade launcher can\'t get XP points for killing enemies\n- Fixed when some primary weapons can\'t be obtained after a tier 3 upgrade in Horde Mode\n- Fixed Reparation perk and how to obtain  it\n- Fixed when the Resupply command has  no sound\n- Random character functionality now works as intended\n\n\nPC :\n- Added AMD FidelityFX™ Super Resolution 2.1 support : Works with Windows 10 and 11\n- Added Haptic Feedback for sprinting and when you hold down for actions.\n- Added Adaptive Trigger support for firearms\n\n\nPlayStation 5 :\n- Added PlayStation 5 Dual Sense support\n- Added Haptic Feedback for sprinting and when you hold down for actions.\n- Added Adaptive Trigger support for firearms',
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
