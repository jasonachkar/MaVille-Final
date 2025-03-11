import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IncidentSignalsRecord extends FirestoreRecord {
  IncidentSignalsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "IncidentTitle" field.
  String? _incidentTitle;
  String get incidentTitle => _incidentTitle ?? '';
  bool hasIncidentTitle() => _incidentTitle != null;

  // "IncidentBody" field.
  String? _incidentBody;
  String get incidentBody => _incidentBody ?? '';
  bool hasIncidentBody() => _incidentBody != null;

  // "IncidentImages" field.
  String? _incidentImages;
  String get incidentImages => _incidentImages ?? '';
  bool hasIncidentImages() => _incidentImages != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "createdTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _incidentTitle = snapshotData['IncidentTitle'] as String?;
    _incidentBody = snapshotData['IncidentBody'] as String?;
    _incidentImages = snapshotData['IncidentImages'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _createdTime = snapshotData['createdTime'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('IncidentSignals');

  static Stream<IncidentSignalsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IncidentSignalsRecord.fromSnapshot(s));

  static Future<IncidentSignalsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IncidentSignalsRecord.fromSnapshot(s));

  static IncidentSignalsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IncidentSignalsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IncidentSignalsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IncidentSignalsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IncidentSignalsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IncidentSignalsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIncidentSignalsRecordData({
  String? incidentTitle,
  String? incidentBody,
  String? incidentImages,
  DocumentReference? user,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'IncidentTitle': incidentTitle,
      'IncidentBody': incidentBody,
      'IncidentImages': incidentImages,
      'user': user,
      'createdTime': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class IncidentSignalsRecordDocumentEquality
    implements Equality<IncidentSignalsRecord> {
  const IncidentSignalsRecordDocumentEquality();

  @override
  bool equals(IncidentSignalsRecord? e1, IncidentSignalsRecord? e2) {
    return e1?.incidentTitle == e2?.incidentTitle &&
        e1?.incidentBody == e2?.incidentBody &&
        e1?.incidentImages == e2?.incidentImages &&
        e1?.user == e2?.user &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(IncidentSignalsRecord? e) => const ListEquality().hash([
        e?.incidentTitle,
        e?.incidentBody,
        e?.incidentImages,
        e?.user,
        e?.createdTime
      ]);

  @override
  bool isValidKey(Object? o) => o is IncidentSignalsRecord;
}
