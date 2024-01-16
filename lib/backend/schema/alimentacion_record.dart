import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlimentacionRecord extends FirestoreRecord {
  AlimentacionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Alimentacion" field.
  String? _alimentacion;
  String get alimentacion => _alimentacion ?? '';
  bool hasAlimentacion() => _alimentacion != null;

  // "ID_Productor" field.
  DocumentReference? _iDProductor;
  DocumentReference? get iDProductor => _iDProductor;
  bool hasIDProductor() => _iDProductor != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _alimentacion = snapshotData['Alimentacion'] as String?;
    _iDProductor = snapshotData['ID_Productor'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Alimentacion')
          : FirebaseFirestore.instance.collectionGroup('Alimentacion');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Alimentacion').doc();

  static Stream<AlimentacionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AlimentacionRecord.fromSnapshot(s));

  static Future<AlimentacionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AlimentacionRecord.fromSnapshot(s));

  static AlimentacionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AlimentacionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AlimentacionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AlimentacionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AlimentacionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AlimentacionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAlimentacionRecordData({
  String? alimentacion,
  DocumentReference? iDProductor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Alimentacion': alimentacion,
      'ID_Productor': iDProductor,
    }.withoutNulls,
  );

  return firestoreData;
}

class AlimentacionRecordDocumentEquality
    implements Equality<AlimentacionRecord> {
  const AlimentacionRecordDocumentEquality();

  @override
  bool equals(AlimentacionRecord? e1, AlimentacionRecord? e2) {
    return e1?.alimentacion == e2?.alimentacion &&
        e1?.iDProductor == e2?.iDProductor;
  }

  @override
  int hash(AlimentacionRecord? e) =>
      const ListEquality().hash([e?.alimentacion, e?.iDProductor]);

  @override
  bool isValidKey(Object? o) => o is AlimentacionRecord;
}
