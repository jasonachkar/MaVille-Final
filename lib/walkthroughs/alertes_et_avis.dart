import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/walkthrough_home_page/walkthrough_alertes_avis/walkthrough_alertes_avis_widget.dart';
import '/walkthrough_alertes_et_avis/walkthrough_category_subscription/walkthrough_category_subscription_widget.dart';
import '/walkthrough_alertes_et_avis/walkthrough_recent_notifications/walkthrough_recent_notifications_widget.dart';
import '/walkthrough_alertes_et_avis/walkthrough_save_button/walkthrough_save_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

// Focus widget keys for this walkthrough
final textAcf6xx75 = GlobalKey();
final columnJuymtg8q = GlobalKey();
final containerVm3e4qih = GlobalKey();
final buttonA9td09ph = GlobalKey();

/// Alertes Et Avis
///
/// Walkthrough of Alertes et Avis page
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Preferences
      TargetFocus(
        keyTarget: textAcf6xx75,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughAlertesAvisWidget(),
          ),
        ],
      ),

      /// Category Subscription
      TargetFocus(
        keyTarget: columnJuymtg8q,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughCategorySubscriptionWidget(),
          ),
        ],
      ),

      /// Recent
      TargetFocus(
        keyTarget: containerVm3e4qih,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => WalkthroughRecentNotificationsWidget(),
          ),
        ],
      ),

      /// Sauvegarder
      TargetFocus(
        keyTarget: buttonA9td09ph,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => WalkthroughSaveButtonWidget(),
          ),
        ],
      ),
    ];
