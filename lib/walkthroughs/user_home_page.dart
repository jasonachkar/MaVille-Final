import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/walkthrough_home_page/walkthrough_alertes_avis/walkthrough_alertes_avis_widget.dart';
import '/walkthrough_home_page/walkthrough_signaler_incident/walkthrough_signaler_incident_widget.dart';
import '/walkthrough_home_page/walkthrough_calendrier_collectes/walkthrough_calendrier_collectes_widget.dart';
import '/walkthrough_home_page/walkthrough_carte_municipale/walkthrough_carte_municipale_widget.dart';
import '/walkthrough_home_page/walkthrough_site_web/walkthrough_site_web_widget.dart';
import '/walkthrough_home_page/walkthrough_page_facebook/walkthrough_page_facebook_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

// Focus widget keys for this walkthrough
final columnC26725wo = GlobalKey();
final columnXh3vdlq2 = GlobalKey();
final column56hukdn9 = GlobalKey();
final columnK2t6er7u = GlobalKey();
final columnZam4igip = GlobalKey();
final columnLwwh3faz = GlobalKey();

/// User Home Page
///
/// Bienvenue sur notre page d'accueil ! Cette visite guidée permet à l'utilisateur de découvrir toutes les fonctionnalités que notre application a à offrir.
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Alertes Et Avis
      TargetFocus(
        keyTarget: columnC26725wo,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => WalkthroughAlertesAvisWidget(),
          ),
        ],
      ),

      /// Signaler Un incident
      TargetFocus(
        keyTarget: columnXh3vdlq2,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => WalkthroughSignalerIncidentWidget(),
          ),
        ],
      ),

      /// Calendrier Collectes
      TargetFocus(
        keyTarget: column56hukdn9,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => WalkthroughCalendrierCollectesWidget(),
          ),
        ],
      ),

      /// Cartes Municipale
      TargetFocus(
        keyTarget: columnK2t6er7u,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => WalkthroughCarteMunicipaleWidget(),
          ),
        ],
      ),

      /// Site web de la ville
      TargetFocus(
        keyTarget: columnZam4igip,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => WalkthroughSiteWebWidget(),
          ),
        ],
      ),

      /// FAcebook
      TargetFocus(
        keyTarget: columnLwwh3faz,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => WalkthroughPageFacebookWidget(),
          ),
        ],
      ),
    ];
