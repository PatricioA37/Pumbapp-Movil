import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegistroPartoRecord extends FirestoreRecord {
  RegistroPartoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ID_RegistroPARTO" field.
  int? _iDRegistroPARTO;
  int get iDRegistroPARTO => _iDRegistroPARTO ?? 0;
  bool hasIDRegistroPARTO() => _iDRegistroPARTO != null;

  // "Cantidad_hijosTOTAL" field.
  int? _cantidadHijosTOTAL;
  int get cantidadHijosTOTAL => _cantidadHijosTOTAL ?? 0;
  bool hasCantidadHijosTOTAL() => _cantidadHijosTOTAL != null;

  // "Cantidad_hijosVIVOS" field.
  int? _cantidadHijosVIVOS;
  int get cantidadHijosVIVOS => _cantidadHijosVIVOS ?? 0;
  bool hasCantidadHijosVIVOS() => _cantidadHijosVIVOS != null;

  // "Cantidad_hijosMUERTOS" field.
  int? _cantidadHijosMUERTOS;
  int get cantidadHijosMUERTOS => _cantidadHijosMUERTOS ?? 0;
  bool hasCantidadHijosMUERTOS() => _cantidadHijosMUERTOS != null;

  // "Fecha_Parto" field.
  DateTime? _fechaParto;
  DateTime? get fechaParto => _fechaParto;
  bool hasFechaParto() => _fechaParto != null;

  // "FOTO" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "ID_Produc" field.
  DocumentReference? _iDProduc;
  DocumentReference? get iDProduc => _iDProduc;
  bool hasIDProduc() => _iDProduc != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _iDRegistroPARTO = castToType<int>(snapshotData['ID_RegistroPARTO']);
    _cantidadHijosTOTAL = castToType<int>(snapshotData['Cantidad_hijosTOTAL']);
    _cantidadHijosVIVOS = castToType<int>(snapshotData['Cantidad_hijosVIVOS']);
    _cantidadHijosMUERTOS =
        castToType<int>(snapshotData['Cantidad_hijosMUERTOS']);
    _fechaParto = snapshotData['Fecha_Parto'] as DateTime?;
    _foto = snapshotData['FOTO'] as String?;
    _iDProduc = snapshotData['ID_Produc'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Registro_Parto')
          : FirebaseFirestore.instance.collectionGroup('Registro_Parto');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Registro_Parto').doc();

  static Stream<RegistroPartoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegistroPartoRecord.fromSnapshot(s));

  static Future<RegistroPartoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RegistroPartoRecord.fromSnapshot(s));

  static RegistroPartoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegistroPartoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistroPartoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistroPartoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistroPartoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistroPartoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistroPartoRecordData({
  int? iDRegistroPARTO,
  int? cantidadHijosTOTAL,
  int? cantidadHijosVIVOS,
  int? cantidadHijosMUERTOS,
  DateTime? fechaParto,
  String? foto,
  DocumentReference? iDProduc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ID_RegistroPARTO': iDRegistroPARTO,
      'Cantidad_hijosTOTAL': cantidadHijosTOTAL,
      'Cantidad_hijosVIVOS': cantidadHijosVIVOS,
      'Cantidad_hijosMUERTOS': cantidadHijosMUERTOS,
      'Fecha_Parto': fechaParto,
      'FOTO': foto,
      'ID_Produc': iDProduc,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegistroPartoRecordDocumentEquality
    implements Equality<RegistroPartoRecord> {
  const RegistroPartoRecordDocumentEquality();

  @override
  bool equals(RegistroPartoRecord? e1, RegistroPartoRecord? e2) {
    return e1?.iDRegistroPARTO == e2?.iDRegistroPARTO &&
        e1?.cantidadHijosTOTAL == e2?.cantidadHijosTOTAL &&
        e1?.cantidadHijosVIVOS == e2?.cantidadHijosVIVOS &&
        e1?.cantidadHijosMUERTOS == e2?.cantidadHijosMUERTOS &&
        e1?.fechaParto == e2?.fechaParto &&
        e1?.foto == e2?.foto &&
        e1?.iDProduc == e2?.iDProduc;
  }

  @override
  int hash(RegistroPartoRecord? e) => const ListEquality().hash([
        e?.iDRegistroPARTO,
        e?.cantidadHijosTOTAL,
        e?.cantidadHijosVIVOS,
        e?.cantidadHijosMUERTOS,
        e?.fechaParto,
        e?.foto,
        e?.iDProduc
      ]);

  @override
  bool isValidKey(Object? o) => o is RegistroPartoRecord;
}
