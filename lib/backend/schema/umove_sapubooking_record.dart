import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UmoveSapubookingRecord extends FirestoreRecord {
  UmoveSapubookingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "pickup" field.
  String? _pickup;
  String get pickup => _pickup ?? '';
  bool hasPickup() => _pickup != null;

  // "destination" field.
  String? _destination;
  String get destination => _destination ?? '';
  bool hasDestination() => _destination != null;

  // "bookingTime" field.
  DateTime? _bookingTime;
  DateTime? get bookingTime => _bookingTime;
  bool hasBookingTime() => _bookingTime != null;

  // "receiptNo" field.
  String? _receiptNo;
  String get receiptNo => _receiptNo ?? '';
  bool hasReceiptNo() => _receiptNo != null;

  // "carbonFootprint" field.
  int? _carbonFootprint;
  int get carbonFootprint => _carbonFootprint ?? 0;
  bool hasCarbonFootprint() => _carbonFootprint != null;

  // "noPassenger" field.
  String? _noPassenger;
  String get noPassenger => _noPassenger ?? '';
  bool hasNoPassenger() => _noPassenger != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "totalFare" field.
  String? _totalFare;
  String get totalFare => _totalFare ?? '';
  bool hasTotalFare() => _totalFare != null;

  // "driverId" field.
  String? _driverId;
  String get driverId => _driverId ?? '';
  bool hasDriverId() => _driverId != null;

  // "eta" field.
  String? _eta;
  String get eta => _eta ?? '';
  bool hasEta() => _eta != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _pickup = snapshotData['pickup'] as String?;
    _destination = snapshotData['destination'] as String?;
    _bookingTime = snapshotData['bookingTime'] as DateTime?;
    _receiptNo = snapshotData['receiptNo'] as String?;
    _carbonFootprint = castToType<int>(snapshotData['carbonFootprint']);
    _noPassenger = snapshotData['noPassenger'] as String?;
    _status = snapshotData['status'] as String?;
    _totalFare = snapshotData['totalFare'] as String?;
    _driverId = snapshotData['driverId'] as String?;
    _eta = snapshotData['eta'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('umove_sapubooking');

  static Stream<UmoveSapubookingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UmoveSapubookingRecord.fromSnapshot(s));

  static Future<UmoveSapubookingRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UmoveSapubookingRecord.fromSnapshot(s));

  static UmoveSapubookingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UmoveSapubookingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UmoveSapubookingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UmoveSapubookingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UmoveSapubookingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UmoveSapubookingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUmoveSapubookingRecordData({
  String? uid,
  String? pickup,
  String? destination,
  DateTime? bookingTime,
  String? receiptNo,
  int? carbonFootprint,
  String? noPassenger,
  String? status,
  String? totalFare,
  String? driverId,
  String? eta,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'pickup': pickup,
      'destination': destination,
      'bookingTime': bookingTime,
      'receiptNo': receiptNo,
      'carbonFootprint': carbonFootprint,
      'noPassenger': noPassenger,
      'status': status,
      'totalFare': totalFare,
      'driverId': driverId,
      'eta': eta,
    }.withoutNulls,
  );

  return firestoreData;
}

class UmoveSapubookingRecordDocumentEquality
    implements Equality<UmoveSapubookingRecord> {
  const UmoveSapubookingRecordDocumentEquality();

  @override
  bool equals(UmoveSapubookingRecord? e1, UmoveSapubookingRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.pickup == e2?.pickup &&
        e1?.destination == e2?.destination &&
        e1?.bookingTime == e2?.bookingTime &&
        e1?.receiptNo == e2?.receiptNo &&
        e1?.carbonFootprint == e2?.carbonFootprint &&
        e1?.noPassenger == e2?.noPassenger &&
        e1?.status == e2?.status &&
        e1?.totalFare == e2?.totalFare &&
        e1?.driverId == e2?.driverId &&
        e1?.eta == e2?.eta;
  }

  @override
  int hash(UmoveSapubookingRecord? e) => const ListEquality().hash([
        e?.uid,
        e?.pickup,
        e?.destination,
        e?.bookingTime,
        e?.receiptNo,
        e?.carbonFootprint,
        e?.noPassenger,
        e?.status,
        e?.totalFare,
        e?.driverId,
        e?.eta
      ]);

  @override
  bool isValidKey(Object? o) => o is UmoveSapubookingRecord;
}
