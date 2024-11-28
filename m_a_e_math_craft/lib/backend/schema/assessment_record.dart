import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssessmentRecord extends FirestoreRecord {
  AssessmentRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "quiz_name" field.
  String? _quizName;
  String get quizName => _quizName ?? '';
  bool hasQuizName() => _quizName != null;

  // "student_Name" field.
  String? _studentName;
  String get studentName => _studentName ?? '';
  bool hasStudentName() => _studentName != null;

  // "score" field.
  int? _score;
  int get score => _score ?? 0;
  bool hasScore() => _score != null;

  void _initializeFields() {
    _quizName = snapshotData['quiz_name'] as String?;
    _studentName = snapshotData['student_Name'] as String?;
    _score = castToType<int>(snapshotData['score']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Assessment');

  static Stream<AssessmentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AssessmentRecord.fromSnapshot(s));

  static Future<AssessmentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AssessmentRecord.fromSnapshot(s));

  static AssessmentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AssessmentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AssessmentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AssessmentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AssessmentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AssessmentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAssessmentRecordData({
  String? quizName,
  String? studentName,
  int? score,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'quiz_name': quizName,
      'student_Name': studentName,
      'score': score,
    }.withoutNulls,
  );

  return firestoreData;
}

class AssessmentRecordDocumentEquality implements Equality<AssessmentRecord> {
  const AssessmentRecordDocumentEquality();

  @override
  bool equals(AssessmentRecord? e1, AssessmentRecord? e2) {
    return e1?.quizName == e2?.quizName &&
        e1?.studentName == e2?.studentName &&
        e1?.score == e2?.score;
  }

  @override
  int hash(AssessmentRecord? e) =>
      const ListEquality().hash([e?.quizName, e?.studentName, e?.score]);

  @override
  bool isValidKey(Object? o) => o is AssessmentRecord;
}
