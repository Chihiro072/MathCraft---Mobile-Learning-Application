import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MathCraftRecord extends FirestoreRecord {
  MathCraftRecord._(
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

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "currency" field.
  int? _currency;
  int get currency => _currency ?? 0;
  bool hasCurrency() => _currency != null;

  // "level" field.
  int? _level;
  int get level => _level ?? 0;
  bool hasLevel() => _level != null;

  // "enrolled_course" field.
  List<String>? _enrolledCourse;
  List<String> get enrolledCourse => _enrolledCourse ?? const [];
  bool hasEnrolledCourse() => _enrolledCourse != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "role" field.
  Role? _role;
  Role? get role => _role;
  bool hasRole() => _role != null;

  // "created_course" field.
  List<String>? _createdCourse;
  List<String> get createdCourse => _createdCourse ?? const [];
  bool hasCreatedCourse() => _createdCourse != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _uid = snapshotData['uid'] as String?;
    _username = snapshotData['username'] as String?;
    _state = snapshotData['state'] as String?;
    _city = snapshotData['city'] as String?;
    _bio = snapshotData['bio'] as String?;
    _currency = castToType<int>(snapshotData['currency']);
    _level = castToType<int>(snapshotData['level']);
    _enrolledCourse = getDataList(snapshotData['enrolled_course']);
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _role = deserializeEnum<Role>(snapshotData['role']);
    _createdCourse = getDataList(snapshotData['created_course']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('MathCraft');

  static Stream<MathCraftRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MathCraftRecord.fromSnapshot(s));

  static Future<MathCraftRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MathCraftRecord.fromSnapshot(s));

  static MathCraftRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MathCraftRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MathCraftRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MathCraftRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MathCraftRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MathCraftRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMathCraftRecordData({
  String? email,
  String? uid,
  String? username,
  String? state,
  String? city,
  String? bio,
  int? currency,
  int? level,
  String? displayName,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  Role? role,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'uid': uid,
      'username': username,
      'state': state,
      'city': city,
      'bio': bio,
      'currency': currency,
      'level': level,
      'display_name': displayName,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'role': role,
    }.withoutNulls,
  );

  return firestoreData;
}

class MathCraftRecordDocumentEquality implements Equality<MathCraftRecord> {
  const MathCraftRecordDocumentEquality();

  @override
  bool equals(MathCraftRecord? e1, MathCraftRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.uid == e2?.uid &&
        e1?.username == e2?.username &&
        e1?.state == e2?.state &&
        e1?.city == e2?.city &&
        e1?.bio == e2?.bio &&
        e1?.currency == e2?.currency &&
        e1?.level == e2?.level &&
        listEquality.equals(e1?.enrolledCourse, e2?.enrolledCourse) &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.role == e2?.role &&
        listEquality.equals(e1?.createdCourse, e2?.createdCourse);
  }

  @override
  int hash(MathCraftRecord? e) => const ListEquality().hash([
        e?.email,
        e?.uid,
        e?.username,
        e?.state,
        e?.city,
        e?.bio,
        e?.currency,
        e?.level,
        e?.enrolledCourse,
        e?.displayName,
        e?.photoUrl,
        e?.createdTime,
        e?.phoneNumber,
        e?.role,
        e?.createdCourse
      ]);

  @override
  bool isValidKey(Object? o) => o is MathCraftRecord;
}
