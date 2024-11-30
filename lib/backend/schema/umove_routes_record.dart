import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UmoveRoutesRecord extends FirestoreRecord {
  UmoveRoutesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "busName" field.
  String? _busName;
  String get busName => _busName ?? '';
  bool hasBusName() => _busName != null;

  // "departHour" field.
  DateTime? _departHour;
  DateTime? get departHour => _departHour;
  bool hasDepartHour() => _departHour != null;

  // "departMin" field.
  DateTime? _departMin;
  DateTime? get departMin => _departMin;
  bool hasDepartMin() => _departMin != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _busName = snapshotData['busName'] as String?;
    _departHour = snapshotData['departHour'] as DateTime?;
    _departMin = snapshotData['departMin'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('umove_routes');

  static Stream<UmoveRoutesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UmoveRoutesRecord.fromSnapshot(s));

  static Future<UmoveRoutesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UmoveRoutesRecord.fromSnapshot(s));

  static UmoveRoutesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UmoveRoutesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UmoveRoutesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UmoveRoutesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UmoveRoutesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UmoveRoutesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUmoveRoutesRecordData({
  DateTime? createdAt,
  String? busName,
  DateTime? departHour,
  DateTime? departMin,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'busName': busName,
      'departHour': departHour,
      'departMin': departMin,
    }.withoutNulls,
  );

  return firestoreData;
}

class UmoveRoutesRecordDocumentEquality implements Equality<UmoveRoutesRecord> {
  const UmoveRoutesRecordDocumentEquality();

  @override
  bool equals(UmoveRoutesRecord? e1, UmoveRoutesRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.busName == e2?.busName &&
        e1?.departHour == e2?.departHour &&
        e1?.departMin == e2?.departMin;
  }

  @override
  int hash(UmoveRoutesRecord? e) => const ListEquality()
      .hash([e?.createdAt, e?.busName, e?.departHour, e?.departMin]);

  @override
  bool isValidKey(Object? o) => o is UmoveRoutesRecord;
}
