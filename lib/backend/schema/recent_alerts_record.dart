import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecentAlertsRecord extends FirestoreRecord {
  RecentAlertsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "Body" field.
  String? _body;
  String get body => _body ?? '';
  bool hasBody() => _body != null;

  // "CreatedTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "Category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  void _initializeFields() {
    _title = snapshotData['Title'] as String?;
    _body = snapshotData['Body'] as String?;
    _createdTime = snapshotData['CreatedTime'] as DateTime?;
    _category = snapshotData['Category'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RecentAlerts');

  static Stream<RecentAlertsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecentAlertsRecord.fromSnapshot(s));

  static Future<RecentAlertsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecentAlertsRecord.fromSnapshot(s));

  static RecentAlertsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecentAlertsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecentAlertsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecentAlertsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecentAlertsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecentAlertsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecentAlertsRecordData({
  String? title,
  String? body,
  DateTime? createdTime,
  String? category,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Title': title,
      'Body': body,
      'CreatedTime': createdTime,
      'Category': category,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecentAlertsRecordDocumentEquality
    implements Equality<RecentAlertsRecord> {
  const RecentAlertsRecordDocumentEquality();

  @override
  bool equals(RecentAlertsRecord? e1, RecentAlertsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.body == e2?.body &&
        e1?.createdTime == e2?.createdTime &&
        e1?.category == e2?.category;
  }

  @override
  int hash(RecentAlertsRecord? e) => const ListEquality()
      .hash([e?.title, e?.body, e?.createdTime, e?.category]);

  @override
  bool isValidKey(Object? o) => o is RecentAlertsRecord;
}
