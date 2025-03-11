import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/success_dialog_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/walkthroughs/signal_incident_walkthrough.dart';
import 'dart:math';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_signal_incident_model.dart';
export 'user_signal_incident_model.dart';

class UserSignalIncidentWidget extends StatefulWidget {
  const UserSignalIncidentWidget({super.key});

  @override
  State<UserSignalIncidentWidget> createState() =>
      _UserSignalIncidentWidgetState();
}

class _UserSignalIncidentWidgetState extends State<UserSignalIncidentWidget>
    with TickerProviderStateMixin {
  late UserSignalIncidentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserSignalIncidentModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    animationsMap.addAll({
      'textFieldOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            hz: 10,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
        ],
      ),
      'buttonOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.05, 1.05),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            'Signaler un Incident',
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Poppins',
                  letterSpacing: 0.0,
                ),
          ).addWalkthrough(
            text3l0k4vqk,
            _model.signalIncidentWalkthroughController,
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 0.0),
                  child: TextFormField(
                    controller: _model.textController1,
                    focusNode: _model.textFieldFocusNode1,
                    autofocus: _model.isTitreEmpty ? true : false,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Titre',
                      labelStyle: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .override(
                            fontFamily: 'Inter',
                            color: valueOrDefault<Color>(
                              _model.isTitreEmpty
                                  ? FlutterFlowTheme.of(context).error
                                  : FlutterFlowTheme.of(context).secondaryText,
                              FlutterFlowTheme.of(context).secondaryText,
                            ),
                            letterSpacing: 0.0,
                            lineHeight: 1.5,
                          ),
                      hintText: valueOrDefault<String>(
                        _model.isTitreEmpty
                            ? 'Please add a titre'
                            : 'Propos de l\'incident',
                        'Propos de l\'incident',
                      ),
                      hintStyle: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .override(
                            fontFamily: 'Inter',
                            color: valueOrDefault<Color>(
                              _model.isTitreEmpty
                                  ? FlutterFlowTheme.of(context).error
                                  : FlutterFlowTheme.of(context).primaryText,
                              FlutterFlowTheme.of(context).primaryText,
                            ),
                            letterSpacing: 0.0,
                          ),
                      errorStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).error,
                                letterSpacing: 0.0,
                                lineHeight: 1.5,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: valueOrDefault<Color>(
                            _model.isTitreEmpty
                                ? FlutterFlowTheme.of(context).error
                                : FlutterFlowTheme.of(context).alternate,
                            FlutterFlowTheme.of(context).alternate,
                          ),
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                          lineHeight: 1.5,
                        ),
                    maxLength: 50,
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                    validator:
                        _model.textController1Validator.asValidator(context),
                  ).animateOnActionTrigger(
                    animationsMap['textFieldOnActionTriggerAnimation']!,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 24.0),
                  child: TextFormField(
                    controller: _model.textController2,
                    focusNode: _model.textFieldFocusNode2,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Message',
                      alignLabelWithHint: true,
                      hintText: 'Décrivez votre incident ici',
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                    maxLines: 5,
                    maxLength: 500,
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                    validator:
                        _model.textController2Validator.asValidator(context),
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  height: 109.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).alternate,
                      width: 1.5,
                    ),
                  ),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      final selectedMedia =
                          await selectMediaWithSourceBottomSheet(
                        context: context,
                        allowPhoto: true,
                      );
                      if (selectedMedia != null &&
                          selectedMedia.every((m) =>
                              validateFileFormat(m.storagePath, context))) {
                        setState(() => _model.isDataUploading1 = true);
                        var selectedUploadedFiles = <FFUploadedFile>[];

                        try {
                          selectedUploadedFiles = selectedMedia
                              .map((m) => FFUploadedFile(
                                    name: m.storagePath.split('/').last,
                                    bytes: m.bytes,
                                    height: m.dimensions?.height,
                                    width: m.dimensions?.width,
                                    blurHash: m.blurHash,
                                  ))
                              .toList();
                        } finally {
                          _model.isDataUploading1 = false;
                        }
                        if (selectedUploadedFiles.length ==
                            selectedMedia.length) {
                          setState(() {
                            _model.uploadedLocalFile1 =
                                selectedUploadedFiles.first;
                          });
                        } else {
                          setState(() {});
                          return;
                        }
                      }

                      _model.uploadedImage = _model.uploadedLocalFile1;
                      setState(() {});
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.now_wallpaper,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 35.0,
                        ),
                        Text(
                          'Attacher une Image',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ].divide(SizedBox(height: 10.0)),
                    ),
                  ),
                ),
                if (_model.uploadedImage != null &&
                    (_model.uploadedImage?.bytes?.isNotEmpty ?? false))
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.memory(
                        _model.uploadedImage?.bytes ?? Uint8List.fromList([]),
                        width: double.infinity,
                        height: 200.0,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            Image.asset(
                          'assets/images/error_image.jpg',
                          width: double.infinity,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      if (_model.uploadedLocalFile1 != null &&
                          (_model.uploadedLocalFile1.bytes?.isNotEmpty ??
                              false)) {
                        if (_model.textController1.text == null ||
                            _model.textController1.text == '') {
                          _model.isTitreEmpty = true;
                          setState(() {});
                          if (animationsMap[
                                  'textFieldOnActionTriggerAnimation'] !=
                              null) {
                            animationsMap['textFieldOnActionTriggerAnimation']!
                                .controller
                                .forward(from: 0.0);
                          }
                        } else {
                          _model.isTitreEmpty = false;
                          setState(() {});
                        }

                        {
                          setState(() => _model.isDataUploading2 = true);
                          var selectedUploadedFiles = <FFUploadedFile>[];
                          var selectedMedia = <SelectedFile>[];
                          var downloadUrls = <String>[];
                          try {
                            selectedUploadedFiles =
                                _model.uploadedImage!.bytes!.isNotEmpty
                                    ? [_model.uploadedImage!]
                                    : <FFUploadedFile>[];
                            selectedMedia = selectedFilesFromUploadedFiles(
                              selectedUploadedFiles,
                            );
                            downloadUrls = (await Future.wait(
                              selectedMedia.map(
                                (m) async =>
                                    await uploadData(m.storagePath, m.bytes),
                              ),
                            ))
                                .where((u) => u != null)
                                .map((u) => u!)
                                .toList();
                          } finally {
                            _model.isDataUploading2 = false;
                          }
                          if (selectedUploadedFiles.length ==
                                  selectedMedia.length &&
                              downloadUrls.length == selectedMedia.length) {
                            setState(() {
                              _model.uploadedLocalFile2 =
                                  selectedUploadedFiles.first;
                              _model.uploadedFileUrl2 = downloadUrls.first;
                            });
                          } else {
                            setState(() {});
                            return;
                          }
                        }

                        var incidentSignalsRecordReference1 =
                            IncidentSignalsRecord.collection
                                .doc(_model.textController1.text);
                        await incidentSignalsRecordReference1.set({
                          ...createIncidentSignalsRecordData(
                            incidentTitle: _model.textController1.text,
                            incidentBody: _model.textController2.text,
                            incidentImages: _model.uploadedFileUrl2,
                            user: currentUserReference,
                          ),
                          ...mapToFirestore(
                            {
                              'createdTime': FieldValue.serverTimestamp(),
                            },
                          ),
                        });
                        _model.successWithImage =
                            IncidentSignalsRecord.getDocumentFromData({
                          ...createIncidentSignalsRecordData(
                            incidentTitle: _model.textController1.text,
                            incidentBody: _model.textController2.text,
                            incidentImages: _model.uploadedFileUrl2,
                            user: currentUserReference,
                          ),
                          ...mapToFirestore(
                            {
                              'createdTime': DateTime.now(),
                            },
                          ),
                        }, incidentSignalsRecordReference1);
                        setState(() {
                          _model.textController1?.clear();
                          _model.textController2?.clear();
                        });
                        setState(() {
                          _model.isDataUploading1 = false;
                          _model.uploadedLocalFile1 =
                              FFUploadedFile(bytes: Uint8List.fromList([]));
                        });

                        showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          isDismissible: false,
                          enableDrag: false,
                          context: context,
                          builder: (context) {
                            return GestureDetector(
                              onTap: () => FocusScope.of(context).unfocus(),
                              child: Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: Container(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.3,
                                  child: SuccessDialogWidget(),
                                ),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));

                        await Future.delayed(
                            const Duration(milliseconds: 1000));
                        Navigator.pop(context);
                        context.safePop();
                      } else {
                        if (_model.textController1.text == null ||
                            _model.textController1.text == '') {
                          _model.isTitreEmpty = true;
                          setState(() {});
                          if (animationsMap[
                                  'textFieldOnActionTriggerAnimation'] !=
                              null) {
                            animationsMap['textFieldOnActionTriggerAnimation']!
                                .controller
                                .forward(from: 0.0);
                          }
                        } else {
                          _model.isTitreEmpty = false;
                          setState(() {});
                        }

                        var incidentSignalsRecordReference2 =
                            IncidentSignalsRecord.collection
                                .doc(_model.textController1.text);
                        await incidentSignalsRecordReference2.set({
                          ...createIncidentSignalsRecordData(
                            incidentTitle: _model.textController1.text,
                            incidentBody: _model.textController2.text,
                            user: currentUserReference,
                          ),
                          ...mapToFirestore(
                            {
                              'createdTime': FieldValue.serverTimestamp(),
                            },
                          ),
                        });
                        _model.successWithoutImage =
                            IncidentSignalsRecord.getDocumentFromData({
                          ...createIncidentSignalsRecordData(
                            incidentTitle: _model.textController1.text,
                            incidentBody: _model.textController2.text,
                            user: currentUserReference,
                          ),
                          ...mapToFirestore(
                            {
                              'createdTime': DateTime.now(),
                            },
                          ),
                        }, incidentSignalsRecordReference2);
                        setState(() {
                          _model.textController1?.clear();
                          _model.textController2?.clear();
                        });
                        showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          isDismissible: false,
                          enableDrag: false,
                          context: context,
                          builder: (context) {
                            return GestureDetector(
                              onTap: () => FocusScope.of(context).unfocus(),
                              child: Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: Container(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.3,
                                  child: SuccessDialogWidget(),
                                ),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));

                        await Future.delayed(
                            const Duration(milliseconds: 1000));
                        Navigator.pop(context);
                        context.safePop();
                      }

                      setState(() {});
                    },
                    text: 'Send',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 50.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      elevation: 2.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ).animateOnActionTrigger(
                    animationsMap['buttonOnActionTriggerAnimation']!,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TutorialCoachMark createPageWalkthrough(BuildContext context) =>
      TutorialCoachMark(
        targets: createWalkthroughTargets(context),
        onFinish: () async {
          safeSetState(() => _model.signalIncidentWalkthroughController = null);
        },
        onSkip: () {
          return true;
        },
      );
}
