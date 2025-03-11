import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OfferedAlertsRecord extends FirestoreRecord {
  OfferedAlertsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "AlertName" field.
  String? _alertName;
  String get alertName => _alertName ?? '';
  bool hasAlertName() => _alertName != null;

  // "AlertSubscribers" field.
  List<DocumentReference>? _alertSubscribers;
  List<DocumentReference> get alertSubscribers => _alertSubscribers ?? const [];
  bool hasAlertSubscribers() => _alertSubscribers != null;

  void _initializeFields() {
    _alertName = snapshotData['AlertName'] as String?;
    _alertSubscribers = getDataList(snapshotData['AlertSubscribers']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('OfferedAlerts');

  static Stream<OfferedAlertsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OfferedAlertsRecord.fromSnapshot(s));

  static Future<OfferedAlertsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OfferedAlertsRecord.fromSnapshot(s));

  static OfferedAlertsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OfferedAlertsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OfferedAlertsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OfferedAlertsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OfferedAlertsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OfferedAlertsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOfferedAlertsRecordData({
  String? alertName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'AlertName': alertName,
    }.withoutNulls,
  );

  return firestoreData;
}

class OfferedAlertsRecordDocumentEquality
    implements Equality<OfferedAlertsRecord> {
  const OfferedAlertsRecordDocumentEquality();

  @override
  bool equals(OfferedAlertsRecord? e1, OfferedAlertsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.alertName == e2?.alertName &&
        listEquality.equals(e1?.alertSubscribers, e2?.alertSubscribers);
  }

  @override
  int hash(OfferedAlertsRecord? e) =>
      const ListEquality().hash([e?.alertName, e?.alertSubscribers]);

  @override
  bool isValidKey(Object? o) => o is OfferedAlertsRecord;
}
