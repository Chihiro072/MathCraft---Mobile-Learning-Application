import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestionRecord extends FirestoreRecord {
  QuestionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "quizSet" field.
  String? _quizSet;
  String get quizSet => _quizSet ?? '';
  bool hasQuizSet() => _quizSet != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['Id']);
    _question = snapshotData['question'] as String?;
    _quizSet = snapshotData['quizSet'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Question');

  static Stream<QuestionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuestionRecord.fromSnapshot(s));

  static Future<QuestionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuestionRecord.fromSnapshot(s));

  static QuestionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuestionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuestionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuestionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuestionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuestionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuestionRecordData({
  int? id,
  String? question,
  String? quizSet,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Id': id,
      'question': question,
      'quizSet': quizSet,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuestionRecordDocumentEquality implements Equality<QuestionRecord> {
  const QuestionRecordDocumentEquality();

  @override
  bool equals(QuestionRecord? e1, QuestionRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.question == e2?.question &&
        e1?.quizSet == e2?.quizSet;
  }

  @override
  int hash(QuestionRecord? e) =>
      const ListEquality().hash([e?.id, e?.question, e?.quizSet]);

  @override
  bool isValidKey(Object? o) => o is QuestionRecord;
}
