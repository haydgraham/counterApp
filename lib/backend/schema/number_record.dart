import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NumberRecord extends FirestoreRecord {
  NumberRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  bool hasCount() => _count != null;

  void _initializeFields() {
    _count = castToType<int>(snapshotData['count']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('number');

  static Stream<NumberRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NumberRecord.fromSnapshot(s));

  static Future<NumberRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NumberRecord.fromSnapshot(s));

  static NumberRecord fromSnapshot(DocumentSnapshot snapshot) => NumberRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NumberRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NumberRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NumberRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NumberRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNumberRecordData({
  int? count,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'count': count,
    }.withoutNulls,
  );

  return firestoreData;
}

class NumberRecordDocumentEquality implements Equality<NumberRecord> {
  const NumberRecordDocumentEquality();

  @override
  bool equals(NumberRecord? e1, NumberRecord? e2) {
    return e1?.count == e2?.count;
  }

  @override
  int hash(NumberRecord? e) => const ListEquality().hash([e?.count]);

  @override
  bool isValidKey(Object? o) => o is NumberRecord;
}
