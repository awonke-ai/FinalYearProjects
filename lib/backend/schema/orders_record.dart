import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "OrderId" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "items" field.
  DocumentReference? _items;
  DocumentReference? get items => _items;
  bool hasItems() => _items != null;

  // "ItemsOrdered" field.
  List<DocumentReference>? _itemsOrdered;
  List<DocumentReference> get itemsOrdered => _itemsOrdered ?? const [];
  bool hasItemsOrdered() => _itemsOrdered != null;

  // "userPurchased" field.
  DocumentReference? _userPurchased;
  DocumentReference? get userPurchased => _userPurchased;
  bool hasUserPurchased() => _userPurchased != null;

  // "placedAt" field.
  DateTime? _placedAt;
  DateTime? get placedAt => _placedAt;
  bool hasPlacedAt() => _placedAt != null;

  // "cutstomerName" field.
  String? _cutstomerName;
  String get cutstomerName => _cutstomerName ?? '';
  bool hasCutstomerName() => _cutstomerName != null;

  // "customePhone" field.
  String? _customePhone;
  String get customePhone => _customePhone ?? '';
  bool hasCustomePhone() => _customePhone != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "isDelivered" field.
  bool? _isDelivered;
  bool get isDelivered => _isDelivered ?? false;
  bool hasIsDelivered() => _isDelivered != null;

  void _initializeFields() {
    _orderId = snapshotData['OrderId'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _address = snapshotData['address'] as String?;
    _items = snapshotData['items'] as DocumentReference?;
    _itemsOrdered = getDataList(snapshotData['ItemsOrdered']);
    _userPurchased = snapshotData['userPurchased'] as DocumentReference?;
    _placedAt = snapshotData['placedAt'] as DateTime?;
    _cutstomerName = snapshotData['cutstomerName'] as String?;
    _customePhone = snapshotData['customePhone'] as String?;
    _notes = snapshotData['notes'] as String?;
    _isDelivered = snapshotData['isDelivered'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  String? orderId,
  double? amount,
  String? address,
  DocumentReference? items,
  DocumentReference? userPurchased,
  DateTime? placedAt,
  String? cutstomerName,
  String? customePhone,
  String? notes,
  bool? isDelivered,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'OrderId': orderId,
      'amount': amount,
      'address': address,
      'items': items,
      'userPurchased': userPurchased,
      'placedAt': placedAt,
      'cutstomerName': cutstomerName,
      'customePhone': customePhone,
      'notes': notes,
      'isDelivered': isDelivered,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.orderId == e2?.orderId &&
        e1?.amount == e2?.amount &&
        e1?.address == e2?.address &&
        e1?.items == e2?.items &&
        listEquality.equals(e1?.itemsOrdered, e2?.itemsOrdered) &&
        e1?.userPurchased == e2?.userPurchased &&
        e1?.placedAt == e2?.placedAt &&
        e1?.cutstomerName == e2?.cutstomerName &&
        e1?.customePhone == e2?.customePhone &&
        e1?.notes == e2?.notes &&
        e1?.isDelivered == e2?.isDelivered;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.orderId,
        e?.amount,
        e?.address,
        e?.items,
        e?.itemsOrdered,
        e?.userPurchased,
        e?.placedAt,
        e?.cutstomerName,
        e?.customePhone,
        e?.notes,
        e?.isDelivered
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
