import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VacunasRecord extends FirestoreRecord {
  VacunasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ID_Vacuna" field.
  int? _iDVacuna;
  int get iDVacuna => _iDVacuna ?? 0;
  bool hasIDVacuna() => _iDVacuna != null;

  // "Nombre_Vacuna" field.
  String? _nombreVacuna;
  String get nombreVacuna => _nombreVacuna ?? '';
  bool hasNombreVacuna() => _nombreVacuna != null;

  // "Tipo_Vacuna" field.
  String? _tipoVacuna;
  String get tipoVacuna => _tipoVacuna ?? '';
  bool hasTipoVacuna() => _tipoVacuna != null;

  // "ID_Produc" field.
  DocumentReference? _iDProduc;
  DocumentReference? get iDProduc => _iDProduc;
  bool hasIDProduc() => _iDProduc != null;

  // "Fecha_Creacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _iDVacuna = castToType<int>(snapshotData['ID_Vacuna']);
    _nombreVacuna = snapshotData['Nombre_Vacuna'] as String?;
    _tipoVacuna = snapshotData['Tipo_Vacuna'] as String?;
    _iDProduc = snapshotData['ID_Produc'] as DocumentReference?;
    _fechaCreacion = snapshotData['Fecha_Creacion'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Vacunas')
          : FirebaseFirestore.instance.collectionGroup('Vacunas');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Vacunas').doc();

  static Stream<VacunasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VacunasRecord.fromSnapshot(s));

  static Future<VacunasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VacunasRecord.fromSnapshot(s));

  static VacunasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VacunasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VacunasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VacunasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VacunasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VacunasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVacunasRecordData({
  int? iDVacuna,
  String? nombreVacuna,
  String? tipoVacuna,
  DocumentReference? iDProduc,
  DateTime? fechaCreacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ID_Vacuna': iDVacuna,
      'Nombre_Vacuna': nombreVacuna,
      'Tipo_Vacuna': tipoVacuna,
      'ID_Produc': iDProduc,
      'Fecha_Creacion': fechaCreacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class VacunasRecordDocumentEquality implements Equality<VacunasRecord> {
  const VacunasRecordDocumentEquality();

  @override
  bool equals(VacunasRecord? e1, VacunasRecord? e2) {
    return e1?.iDVacuna == e2?.iDVacuna &&
        e1?.nombreVacuna == e2?.nombreVacuna &&
        e1?.tipoVacuna == e2?.tipoVacuna &&
        e1?.iDProduc == e2?.iDProduc &&
        e1?.fechaCreacion == e2?.fechaCreacion;
  }

  @override
  int hash(VacunasRecord? e) => const ListEquality().hash([
        e?.iDVacuna,
        e?.nombreVacuna,
        e?.tipoVacuna,
        e?.iDProduc,
        e?.fechaCreacion
      ]);

  @override
  bool isValidKey(Object? o) => o is VacunasRecord;
}
