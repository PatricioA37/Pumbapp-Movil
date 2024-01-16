import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegistroMontaRecord extends FirestoreRecord {
  RegistroMontaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ID_Marrana" field.
  int? _iDMarrana;
  int get iDMarrana => _iDMarrana ?? 0;
  bool hasIDMarrana() => _iDMarrana != null;

  // "ID_Verraco" field.
  int? _iDVerraco;
  int get iDVerraco => _iDVerraco ?? 0;
  bool hasIDVerraco() => _iDVerraco != null;

  // "Fecha_Monta" field.
  DateTime? _fechaMonta;
  DateTime? get fechaMonta => _fechaMonta;
  bool hasFechaMonta() => _fechaMonta != null;

  // "FOTO" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "ID_Produc" field.
  DocumentReference? _iDProduc;
  DocumentReference? get iDProduc => _iDProduc;
  bool hasIDProduc() => _iDProduc != null;

  // "Pronostico_Parto" field.
  String? _pronosticoParto;
  String get pronosticoParto => _pronosticoParto ?? '';
  bool hasPronosticoParto() => _pronosticoParto != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _iDMarrana = castToType<int>(snapshotData['ID_Marrana']);
    _iDVerraco = castToType<int>(snapshotData['ID_Verraco']);
    _fechaMonta = snapshotData['Fecha_Monta'] as DateTime?;
    _foto = snapshotData['FOTO'] as String?;
    _iDProduc = snapshotData['ID_Produc'] as DocumentReference?;
    _pronosticoParto = snapshotData['Pronostico_Parto'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Registro_Monta')
          : FirebaseFirestore.instance.collectionGroup('Registro_Monta');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Registro_Monta').doc();

  static Stream<RegistroMontaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegistroMontaRecord.fromSnapshot(s));

  static Future<RegistroMontaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RegistroMontaRecord.fromSnapshot(s));

  static RegistroMontaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegistroMontaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistroMontaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistroMontaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistroMontaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistroMontaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistroMontaRecordData({
  int? iDMarrana,
  int? iDVerraco,
  DateTime? fechaMonta,
  String? foto,
  DocumentReference? iDProduc,
  String? pronosticoParto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ID_Marrana': iDMarrana,
      'ID_Verraco': iDVerraco,
      'Fecha_Monta': fechaMonta,
      'FOTO': foto,
      'ID_Produc': iDProduc,
      'Pronostico_Parto': pronosticoParto,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegistroMontaRecordDocumentEquality
    implements Equality<RegistroMontaRecord> {
  const RegistroMontaRecordDocumentEquality();

  @override
  bool equals(RegistroMontaRecord? e1, RegistroMontaRecord? e2) {
    return e1?.iDMarrana == e2?.iDMarrana &&
        e1?.iDVerraco == e2?.iDVerraco &&
        e1?.fechaMonta == e2?.fechaMonta &&
        e1?.foto == e2?.foto &&
        e1?.iDProduc == e2?.iDProduc &&
        e1?.pronosticoParto == e2?.pronosticoParto;
  }

  @override
  int hash(RegistroMontaRecord? e) => const ListEquality().hash([
        e?.iDMarrana,
        e?.iDVerraco,
        e?.fechaMonta,
        e?.foto,
        e?.iDProduc,
        e?.pronosticoParto
      ]);

  @override
  bool isValidKey(Object? o) => o is RegistroMontaRecord;
}
