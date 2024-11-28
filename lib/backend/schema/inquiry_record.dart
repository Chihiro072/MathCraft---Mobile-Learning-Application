import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InquiryRecord extends FirestoreRecord {
  InquiryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "sender" field.
  String? _sender;
  String get sender => _sender ?? '';
  bool hasSender() => _sender != null;

  // "inquiry" field.
  String? _inquiry;
  String get inquiry => _inquiry ?? '';
  bool hasInquiry() => _inquiry != null;

  // "submittedTime" field.
  DateTime? _submittedTime;
  DateTime? get submittedTime => _submittedTime;
  bool hasSubmittedTime() => _submittedTime != null;

  // "reply" field.
  String? _reply;
  String get reply => _reply ?? '';
  bool hasReply() => _reply != null;

  void _initializeFields() {
    _sender = snapshotData['sender'] as String?;
    _inquiry = snapshotData['inquiry'] as String?;
    _submittedTime = snapshotData['submittedTime'] as DateTime?;
    _reply = snapshotData['reply'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Inquiry');

  static Stream<InquiryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InquiryRecord.fromSnapshot(s));

  static Future<InquiryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InquiryRecord.fromSnapshot(s));

  static InquiryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InquiryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InquiryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InquiryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InquiryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InquiryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInquiryRecordData({
  String? sender,
  String? inquiry,
  DateTime? submittedTime,
  String? reply,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sender': sender,
      'inquiry': inquiry,
      'submittedTime': submittedTime,
      'reply': reply,
    }.withoutNulls,
  );

  return firestoreData;
}

class InquiryRecordDocumentEquality implements Equality<InquiryRecord> {
  const InquiryRecordDocumentEquality();

  @override
  bool equals(InquiryRecord? e1, InquiryRecord? e2) {
    return e1?.sender == e2?.sender &&
        e1?.inquiry == e2?.inquiry &&
        e1?.submittedTime == e2?.submittedTime &&
        e1?.reply == e2?.reply;
  }

  @override
  int hash(InquiryRecord? e) => const ListEquality()
      .hash([e?.sender, e?.inquiry, e?.submittedTime, e?.reply]);

  @override
  bool isValidKey(Object? o) => o is InquiryRecord;
}
