import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodItemRecord extends FirestoreRecord {
  FoodItemRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "food_name" field.
  String? _foodName;
  String get foodName => _foodName ?? '';
  bool hasFoodName() => _foodName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "food_img" field.
  String? _foodImg;
  String get foodImg => _foodImg ?? '';
  bool hasFoodImg() => _foodImg != null;

  // "categoryRef" field.
  String? _categoryRef;
  String get categoryRef => _categoryRef ?? '';
  bool hasCategoryRef() => _categoryRef != null;

  // "timetoprep" field.
  int? _timetoprep;
  int get timetoprep => _timetoprep ?? 0;
  bool hasTimetoprep() => _timetoprep != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  void _initializeFields() {
    _foodName = snapshotData['food_name'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _foodImg = snapshotData['food_img'] as String?;
    _categoryRef = snapshotData['categoryRef'] as String?;
    _timetoprep = castToType<int>(snapshotData['timetoprep']);
    _rating = castToType<double>(snapshotData['rating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('foodItem');

  static Stream<FoodItemRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FoodItemRecord.fromSnapshot(s));

  static Future<FoodItemRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FoodItemRecord.fromSnapshot(s));

  static FoodItemRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FoodItemRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FoodItemRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FoodItemRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FoodItemRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FoodItemRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFoodItemRecordData({
  String? foodName,
  String? description,
  double? price,
  String? foodImg,
  String? categoryRef,
  int? timetoprep,
  double? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'food_name': foodName,
      'description': description,
      'price': price,
      'food_img': foodImg,
      'categoryRef': categoryRef,
      'timetoprep': timetoprep,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class FoodItemRecordDocumentEquality implements Equality<FoodItemRecord> {
  const FoodItemRecordDocumentEquality();

  @override
  bool equals(FoodItemRecord? e1, FoodItemRecord? e2) {
    return e1?.foodName == e2?.foodName &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.foodImg == e2?.foodImg &&
        e1?.categoryRef == e2?.categoryRef &&
        e1?.timetoprep == e2?.timetoprep &&
        e1?.rating == e2?.rating;
  }

  @override
  int hash(FoodItemRecord? e) => const ListEquality().hash([
        e?.foodName,
        e?.description,
        e?.price,
        e?.foodImg,
        e?.categoryRef,
        e?.timetoprep,
        e?.rating
      ]);

  @override
  bool isValidKey(Object? o) => o is FoodItemRecord;
}
