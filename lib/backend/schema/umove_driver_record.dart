import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UmoveDriverRecord extends FirestoreRecord {
  UmoveDriverRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "driverid" field.
  String? _driverid;
  String get driverid => _driverid ?? '';
  bool hasDriverid() => _driverid != null;

  // "drivername" field.
  String? _drivername;
  String get drivername => _drivername ?? '';
  bool hasDrivername() => _drivername != null;

  // "driverlicenseNo" field.
  String? _driverlicenseNo;
  String get driverlicenseNo => _driverlicenseNo ?? '';
  bool hasDriverlicenseNo() => _driverlicenseNo != null;

  // "driverVehicleNo" field.
  String? _driverVehicleNo;
  String get driverVehicleNo => _driverVehicleNo ?? '';
  bool hasDriverVehicleNo() => _driverVehicleNo != null;

  // "driverVehicleName" field.
  String? _driverVehicleName;
  String get driverVehicleName => _driverVehicleName ?? '';
  bool hasDriverVehicleName() => _driverVehicleName != null;

  // "driverCurrentLocation" field.
  LatLng? _driverCurrentLocation;
  LatLng? get driverCurrentLocation => _driverCurrentLocation;
  bool hasDriverCurrentLocation() => _driverCurrentLocation != null;

  // "driverAvailability" field.
  bool? _driverAvailability;
  bool get driverAvailability => _driverAvailability ?? false;
  bool hasDriverAvailability() => _driverAvailability != null;

  // "driverprofilePic" field.
  String? _driverprofilePic;
  String get driverprofilePic => _driverprofilePic ?? '';
  bool hasDriverprofilePic() => _driverprofilePic != null;

  void _initializeFields() {
    _driverid = snapshotData['driverid'] as String?;
    _drivername = snapshotData['drivername'] as String?;
    _driverlicenseNo = snapshotData['driverlicenseNo'] as String?;
    _driverVehicleNo = snapshotData['driverVehicleNo'] as String?;
    _driverVehicleName = snapshotData['driverVehicleName'] as String?;
    _driverCurrentLocation = snapshotData['driverCurrentLocation'] as LatLng?;
    _driverAvailability = snapshotData['driverAvailability'] as bool?;
    _driverprofilePic = snapshotData['driverprofilePic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('umove_driver');

  static Stream<UmoveDriverRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UmoveDriverRecord.fromSnapshot(s));

  static Future<UmoveDriverRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UmoveDriverRecord.fromSnapshot(s));

  static UmoveDriverRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UmoveDriverRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UmoveDriverRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UmoveDriverRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UmoveDriverRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UmoveDriverRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUmoveDriverRecordData({
  String? driverid,
  String? drivername,
  String? driverlicenseNo,
  String? driverVehicleNo,
  String? driverVehicleName,
  LatLng? driverCurrentLocation,
  bool? driverAvailability,
  String? driverprofilePic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'driverid': driverid,
      'drivername': drivername,
      'driverlicenseNo': driverlicenseNo,
      'driverVehicleNo': driverVehicleNo,
      'driverVehicleName': driverVehicleName,
      'driverCurrentLocation': driverCurrentLocation,
      'driverAvailability': driverAvailability,
      'driverprofilePic': driverprofilePic,
    }.withoutNulls,
  );

  return firestoreData;
}

class UmoveDriverRecordDocumentEquality implements Equality<UmoveDriverRecord> {
  const UmoveDriverRecordDocumentEquality();

  @override
  bool equals(UmoveDriverRecord? e1, UmoveDriverRecord? e2) {
    return e1?.driverid == e2?.driverid &&
        e1?.drivername == e2?.drivername &&
        e1?.driverlicenseNo == e2?.driverlicenseNo &&
        e1?.driverVehicleNo == e2?.driverVehicleNo &&
        e1?.driverVehicleName == e2?.driverVehicleName &&
        e1?.driverCurrentLocation == e2?.driverCurrentLocation &&
        e1?.driverAvailability == e2?.driverAvailability &&
        e1?.driverprofilePic == e2?.driverprofilePic;
  }

  @override
  int hash(UmoveDriverRecord? e) => const ListEquality().hash([
        e?.driverid,
        e?.drivername,
        e?.driverlicenseNo,
        e?.driverVehicleNo,
        e?.driverVehicleName,
        e?.driverCurrentLocation,
        e?.driverAvailability,
        e?.driverprofilePic
      ]);

  @override
  bool isValidKey(Object? o) => o is UmoveDriverRecord;
}
