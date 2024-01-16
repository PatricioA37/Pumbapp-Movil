import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegistroAnimalRecord extends FirestoreRecord {
  RegistroAnimalRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ID" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "Tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "Raza" field.
  String? _raza;
  String get raza => _raza ?? '';
  bool hasRaza() => _raza != null;

  // "Fecha_Ingreso" field.
  DateTime? _fechaIngreso;
  DateTime? get fechaIngreso => _fechaIngreso;
  bool hasFechaIngreso() => _fechaIngreso != null;

  // "Peso" field.
  double? _peso;
  double get peso => _peso ?? 0.0;
  bool hasPeso() => _peso != null;

  // "Edad" field.
  String? _edad;
  String get edad => _edad ?? '';
  bool hasEdad() => _edad != null;

  // "Genero" field.
  String? _genero;
  String get genero => _genero ?? '';
  bool hasGenero() => _genero != null;

  // "Estado_Animal" field.
  String? _estadoAnimal;
  String get estadoAnimal => _estadoAnimal ?? '';
  bool hasEstadoAnimal() => _estadoAnimal != null;

  // "ID_Produc" field.
  DocumentReference? _iDProduc;
  DocumentReference? get iDProduc => _iDProduc;
  bool hasIDProduc() => _iDProduc != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['ID']);
    _tipo = snapshotData['Tipo'] as String?;
    _raza = snapshotData['Raza'] as String?;
    _fechaIngreso = snapshotData['Fecha_Ingreso'] as DateTime?;
    _peso = castToType<double>(snapshotData['Peso']);
    _edad = snapshotData['Edad'] as String?;
    _genero = snapshotData['Genero'] as String?;
    _estadoAnimal = snapshotData['Estado_Animal'] as String?;
    _iDProduc = snapshotData['ID_Produc'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Registro_Animal')
          : FirebaseFirestore.instance.collectionGroup('Registro_Animal');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Registro_Animal').doc();

  static Stream<RegistroAnimalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegistroAnimalRecord.fromSnapshot(s));

  static Future<RegistroAnimalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RegistroAnimalRecord.fromSnapshot(s));

  static RegistroAnimalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegistroAnimalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistroAnimalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistroAnimalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistroAnimalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistroAnimalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistroAnimalRecordData({
  int? id,
  String? tipo,
  String? raza,
  DateTime? fechaIngreso,
  double? peso,
  String? edad,
  String? genero,
  String? estadoAnimal,
  DocumentReference? iDProduc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ID': id,
      'Tipo': tipo,
      'Raza': raza,
      'Fecha_Ingreso': fechaIngreso,
      'Peso': peso,
      'Edad': edad,
      'Genero': genero,
      'Estado_Animal': estadoAnimal,
      'ID_Produc': iDProduc,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegistroAnimalRecordDocumentEquality
    implements Equality<RegistroAnimalRecord> {
  const RegistroAnimalRecordDocumentEquality();

  @override
  bool equals(RegistroAnimalRecord? e1, RegistroAnimalRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.tipo == e2?.tipo &&
        e1?.raza == e2?.raza &&
        e1?.fechaIngreso == e2?.fechaIngreso &&
        e1?.peso == e2?.peso &&
        e1?.edad == e2?.edad &&
        e1?.genero == e2?.genero &&
        e1?.estadoAnimal == e2?.estadoAnimal &&
        e1?.iDProduc == e2?.iDProduc;
  }

  @override
  int hash(RegistroAnimalRecord? e) => const ListEquality().hash([
        e?.id,
        e?.tipo,
        e?.raza,
        e?.fechaIngreso,
        e?.peso,
        e?.edad,
        e?.genero,
        e?.estadoAnimal,
        e?.iDProduc
      ]);

  @override
  bool isValidKey(Object? o) => o is RegistroAnimalRecord;
}
