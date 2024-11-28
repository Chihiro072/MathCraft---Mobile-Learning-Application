// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PhotoStruct extends FFFirebaseStruct {
  PhotoStruct({
    String? image,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _image = image,
        super(firestoreUtilData);

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  static PhotoStruct fromMap(Map<String, dynamic> data) => PhotoStruct(
        image: data['image'] as String?,
      );

  static PhotoStruct? maybeFromMap(dynamic data) =>
      data is Map ? PhotoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static PhotoStruct fromSerializableMap(Map<String, dynamic> data) =>
      PhotoStruct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PhotoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PhotoStruct && image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([image]);
}

PhotoStruct createPhotoStruct({
  String? image,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PhotoStruct(
      image: image,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PhotoStruct? updatePhotoStruct(
  PhotoStruct? photo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    photo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPhotoStructData(
  Map<String, dynamic> firestoreData,
  PhotoStruct? photo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (photo == null) {
    return;
  }
  if (photo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && photo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final photoData = getPhotoFirestoreData(photo, forFieldValue);
  final nestedData = photoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = photo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPhotoFirestoreData(
  PhotoStruct? photo, [
  bool forFieldValue = false,
]) {
  if (photo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(photo.toMap());

  // Add any Firestore field values
  photo.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPhotoListFirestoreData(
  List<PhotoStruct>? photos,
) =>
    photos?.map((e) => getPhotoFirestoreData(e, true)).toList() ?? [];
