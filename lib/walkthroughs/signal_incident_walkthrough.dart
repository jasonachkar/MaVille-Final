import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/walkthrough_signaler_un_incident/walkthrough_signaler_un_incident_send_button/walkthrough_signaler_un_incident_send_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

// Focus widget keys for this walkthrough
final text3l0k4vqk = GlobalKey();

/// Signal Incident Walkthrough
///
/// Walkthrough of the Signaler un Incident page
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: text3l0k4vqk,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) =>
                WalkthroughSignalerUnIncidentSendButtonWidget(),
          ),
        ],
      ),
    ];
