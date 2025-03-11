import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdminPushCodesRecord extends FirestoreRecord {
  AdminPushCodesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  bool hasCode() => _code != null;

  void _initializeFields() {
    _code = snapshotData['code'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AdminPushCodes');

  static Stream<AdminPushCodesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdminPushCodesRecord.fromSnapshot(s));

  static Future<AdminPushCodesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdminPushCodesRecord.fromSnapshot(s));

  static AdminPushCodesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdminPushCodesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdminPushCodesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdminPushCodesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdminPushCodesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdminPushCodesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdminPushCodesRecordData({
  String? code,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'code': code,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdminPushCodesRecordDocumentEquality
    implements Equality<AdminPushCodesRecord> {
  const AdminPushCodesRecordDocumentEquality();

  @override
  bool equals(AdminPushCodesRecord? e1, AdminPushCodesRecord? e2) {
    return e1?.code == e2?.code;
  }

  @override
  int hash(AdminPushCodesRecord? e) => const ListEquality().hash([e?.code]);

  @override
  bool isValidKey(Object? o) => o is AdminPushCodesRecord;
}
