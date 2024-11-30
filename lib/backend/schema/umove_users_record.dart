import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UmoveUsersRecord extends FirestoreRecord {
  UmoveUsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "totalCarbonFootprint" field.
  int? _totalCarbonFootprint;
  int get totalCarbonFootprint => _totalCarbonFootprint ?? 0;
  bool hasTotalCarbonFootprint() => _totalCarbonFootprint != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _name = snapshotData['name'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _username = snapshotData['username'] as String?;
    _password = snapshotData['password'] as String?;
    _totalCarbonFootprint =
        castToType<int>(snapshotData['totalCarbonFootprint']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('umove_users');

  static Stream<UmoveUsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UmoveUsersRecord.fromSnapshot(s));

  static Future<UmoveUsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UmoveUsersRecord.fromSnapshot(s));

  static UmoveUsersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UmoveUsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UmoveUsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UmoveUsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UmoveUsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UmoveUsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUmoveUsersRecordData({
  String? email,
  String? uid,
  DateTime? createdTime,
  String? name,
  String? displayName,
  String? photoUrl,
  String? phoneNumber,
  String? username,
  String? password,
  int? totalCarbonFootprint,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'uid': uid,
      'created_time': createdTime,
      'name': name,
      'display_name': displayName,
      'photo_url': photoUrl,
      'phone_number': phoneNumber,
      'username': username,
      'password': password,
      'totalCarbonFootprint': totalCarbonFootprint,
    }.withoutNulls,
  );

  return firestoreData;
}

class UmoveUsersRecordDocumentEquality implements Equality<UmoveUsersRecord> {
  const UmoveUsersRecordDocumentEquality();

  @override
  bool equals(UmoveUsersRecord? e1, UmoveUsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.name == e2?.name &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.username == e2?.username &&
        e1?.password == e2?.password &&
        e1?.totalCarbonFootprint == e2?.totalCarbonFootprint;
  }

  @override
  int hash(UmoveUsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.uid,
        e?.createdTime,
        e?.name,
        e?.displayName,
        e?.photoUrl,
        e?.phoneNumber,
        e?.username,
        e?.password,
        e?.totalCarbonFootprint
      ]);

  @override
  bool isValidKey(Object? o) => o is UmoveUsersRecord;
}
