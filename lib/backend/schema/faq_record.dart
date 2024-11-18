import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FaqRecord extends FirestoreRecord {
  FaqRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "answer" field.
  String? _answer;
  String get answer => _answer ?? '';
  bool hasAnswer() => _answer != null;

  // "isOpen" field.
  bool? _isOpen;
  bool get isOpen => _isOpen ?? false;
  bool hasIsOpen() => _isOpen != null;

  void _initializeFields() {
    _question = snapshotData['question'] as String?;
    _answer = snapshotData['answer'] as String?;
    _isOpen = snapshotData['isOpen'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FAQ');

  static Stream<FaqRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FaqRecord.fromSnapshot(s));

  static Future<FaqRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FaqRecord.fromSnapshot(s));

  static FaqRecord fromSnapshot(DocumentSnapshot snapshot) => FaqRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FaqRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FaqRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FaqRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FaqRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFaqRecordData({
  String? question,
  String? answer,
  bool? isOpen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'question': question,
      'answer': answer,
      'isOpen': isOpen,
    }.withoutNulls,
  );

  return firestoreData;
}

class FaqRecordDocumentEquality implements Equality<FaqRecord> {
  const FaqRecordDocumentEquality();

  @override
  bool equals(FaqRecord? e1, FaqRecord? e2) {
    return e1?.question == e2?.question &&
        e1?.answer == e2?.answer &&
        e1?.isOpen == e2?.isOpen;
  }

  @override
  int hash(FaqRecord? e) =>
      const ListEquality().hash([e?.question, e?.answer, e?.isOpen]);

  @override
  bool isValidKey(Object? o) => o is FaqRecord;
}
