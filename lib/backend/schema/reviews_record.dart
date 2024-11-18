import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewsRecord extends FirestoreRecord {
  ReviewsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "reviewtext" field.
  String? _reviewtext;
  String get reviewtext => _reviewtext ?? '';
  bool hasReviewtext() => _reviewtext != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "reviewer_image" field.
  String? _reviewerImage;
  String get reviewerImage => _reviewerImage ?? '';
  bool hasReviewerImage() => _reviewerImage != null;

  // "reviewer_name" field.
  String? _reviewerName;
  String get reviewerName => _reviewerName ?? '';
  bool hasReviewerName() => _reviewerName != null;

  // "foodname" field.
  String? _foodname;
  String get foodname => _foodname ?? '';
  bool hasFoodname() => _foodname != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  void _initializeFields() {
    _reviewtext = snapshotData['reviewtext'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _reviewerImage = snapshotData['reviewer_image'] as String?;
    _reviewerName = snapshotData['reviewer_name'] as String?;
    _foodname = snapshotData['foodname'] as String?;
    _rating = castToType<int>(snapshotData['rating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reviews');

  static Stream<ReviewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReviewsRecord.fromSnapshot(s));

  static Future<ReviewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReviewsRecord.fromSnapshot(s));

  static ReviewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReviewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReviewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReviewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReviewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReviewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReviewsRecordData({
  String? reviewtext,
  DateTime? date,
  String? reviewerImage,
  String? reviewerName,
  String? foodname,
  int? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'reviewtext': reviewtext,
      'date': date,
      'reviewer_image': reviewerImage,
      'reviewer_name': reviewerName,
      'foodname': foodname,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReviewsRecordDocumentEquality implements Equality<ReviewsRecord> {
  const ReviewsRecordDocumentEquality();

  @override
  bool equals(ReviewsRecord? e1, ReviewsRecord? e2) {
    return e1?.reviewtext == e2?.reviewtext &&
        e1?.date == e2?.date &&
        e1?.reviewerImage == e2?.reviewerImage &&
        e1?.reviewerName == e2?.reviewerName &&
        e1?.foodname == e2?.foodname &&
        e1?.rating == e2?.rating;
  }

  @override
  int hash(ReviewsRecord? e) => const ListEquality().hash([
        e?.reviewtext,
        e?.date,
        e?.reviewerImage,
        e?.reviewerName,
        e?.foodname,
        e?.rating
      ]);

  @override
  bool isValidKey(Object? o) => o is ReviewsRecord;
}
