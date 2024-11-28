import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CourseRecord extends FirestoreRecord {
  CourseRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "difficulty" field.
  String? _difficulty;
  String get difficulty => _difficulty ?? '';
  bool hasDifficulty() => _difficulty != null;

  // "content" field.
  List<String>? _content;
  List<String> get content => _content ?? const [];
  bool hasContent() => _content != null;

  // "duration" field.
  double? _duration;
  double get duration => _duration ?? 0.0;
  bool hasDuration() => _duration != null;

  // "total_question" field.
  int? _totalQuestion;
  int get totalQuestion => _totalQuestion ?? 0;
  bool hasTotalQuestion() => _totalQuestion != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _difficulty = snapshotData['difficulty'] as String?;
    _content = getDataList(snapshotData['content']);
    _duration = castToType<double>(snapshotData['duration']);
    _totalQuestion = castToType<int>(snapshotData['total_question']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Course');

  static Stream<CourseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CourseRecord.fromSnapshot(s));

  static Future<CourseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CourseRecord.fromSnapshot(s));

  static CourseRecord fromSnapshot(DocumentSnapshot snapshot) => CourseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CourseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CourseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CourseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CourseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCourseRecordData({
  String? name,
  String? description,
  String? difficulty,
  double? duration,
  int? totalQuestion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'difficulty': difficulty,
      'duration': duration,
      'total_question': totalQuestion,
    }.withoutNulls,
  );

  return firestoreData;
}

class CourseRecordDocumentEquality implements Equality<CourseRecord> {
  const CourseRecordDocumentEquality();

  @override
  bool equals(CourseRecord? e1, CourseRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.difficulty == e2?.difficulty &&
        listEquality.equals(e1?.content, e2?.content) &&
        e1?.duration == e2?.duration &&
        e1?.totalQuestion == e2?.totalQuestion;
  }

  @override
  int hash(CourseRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.difficulty,
        e?.content,
        e?.duration,
        e?.totalQuestion
      ]);

  @override
  bool isValidKey(Object? o) => o is CourseRecord;
}
