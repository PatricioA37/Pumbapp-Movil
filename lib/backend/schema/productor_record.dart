import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductorRecord extends FirestoreRecord {
  ProductorRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
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

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _uid = snapshotData['uid'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _direccion = snapshotData['direccion'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Productor');

  static Stream<ProductorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductorRecord.fromSnapshot(s));

  static Future<ProductorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductorRecord.fromSnapshot(s));

  static ProductorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductorRecordData({
  String? email,
  String? uid,
  String? phoneNumber,
  String? displayName,
  DateTime? createdTime,
  String? direccion,
  String? photoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'uid': uid,
      'phone_number': phoneNumber,
      'display_name': displayName,
      'created_time': createdTime,
      'direccion': direccion,
      'photo_url': photoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductorRecordDocumentEquality implements Equality<ProductorRecord> {
  const ProductorRecordDocumentEquality();

  @override
  bool equals(ProductorRecord? e1, ProductorRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.uid == e2?.uid &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.displayName == e2?.displayName &&
        e1?.createdTime == e2?.createdTime &&
        e1?.direccion == e2?.direccion &&
        e1?.photoUrl == e2?.photoUrl;
  }

  @override
  int hash(ProductorRecord? e) => const ListEquality().hash([
        e?.email,
        e?.uid,
        e?.phoneNumber,
        e?.displayName,
        e?.createdTime,
        e?.direccion,
        e?.photoUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductorRecord;
}
