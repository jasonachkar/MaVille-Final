import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CollectesImagesRecord extends FirestoreRecord {
  CollectesImagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CollecteCalendarImage" field.
  String? _collecteCalendarImage;
  String get collecteCalendarImage => _collecteCalendarImage ?? '';
  bool hasCollecteCalendarImage() => _collecteCalendarImage != null;

  void _initializeFields() {
    _collecteCalendarImage = snapshotData['CollecteCalendarImage'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CollectesImages');

  static Stream<CollectesImagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CollectesImagesRecord.fromSnapshot(s));

  static Future<CollectesImagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CollectesImagesRecord.fromSnapshot(s));

  static CollectesImagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CollectesImagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CollectesImagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CollectesImagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CollectesImagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CollectesImagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCollectesImagesRecordData({
  String? collecteCalendarImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CollecteCalendarImage': collecteCalendarImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class CollectesImagesRecordDocumentEquality
    implements Equality<CollectesImagesRecord> {
  const CollectesImagesRecordDocumentEquality();

  @override
  bool equals(CollectesImagesRecord? e1, CollectesImagesRecord? e2) {
    return e1?.collecteCalendarImage == e2?.collecteCalendarImage;
  }

  @override
  int hash(CollectesImagesRecord? e) =>
      const ListEquality().hash([e?.collecteCalendarImage]);

  @override
  bool isValidKey(Object? o) => o is CollectesImagesRecord;
}
