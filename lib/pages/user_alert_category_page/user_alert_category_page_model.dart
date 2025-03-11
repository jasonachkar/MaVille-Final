import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/success_dialog_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/user_alert_subscription_bottom_sheet/user_alert_subscription_bottom_sheet_widget.dart';
import '/walkthroughs/alertes_et_avis.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'user_alert_category_page_widget.dart' show UserAlertCategoryPageWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserAlertCategoryPageModel
    extends FlutterFlowModel<UserAlertCategoryPageWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? alertesEtAvisController;
  // State field(s) for Checkbox widget.
  Map<OfferedAlertsRecord, bool> checkboxValueMap = {};
  List<OfferedAlertsRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    alertesEtAvisController?.finish();
  }
}
