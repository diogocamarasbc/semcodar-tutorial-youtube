import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutosRecord extends FirestoreRecord {
  ProdutosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "produto" field.
  String? _produto;
  String get produto => _produto ?? '';
  bool hasProduto() => _produto != null;

  // "comprado" field.
  bool? _comprado;
  bool get comprado => _comprado ?? false;
  bool hasComprado() => _comprado != null;

  void _initializeFields() {
    _produto = snapshotData['produto'] as String?;
    _comprado = snapshotData['comprado'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('produtos');

  static Stream<ProdutosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProdutosRecord.fromSnapshot(s));

  static Future<ProdutosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProdutosRecord.fromSnapshot(s));

  static ProdutosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProdutosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProdutosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProdutosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProdutosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProdutosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProdutosRecordData({
  String? produto,
  bool? comprado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'produto': produto,
      'comprado': comprado,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProdutosRecordDocumentEquality implements Equality<ProdutosRecord> {
  const ProdutosRecordDocumentEquality();

  @override
  bool equals(ProdutosRecord? e1, ProdutosRecord? e2) {
    return e1?.produto == e2?.produto && e1?.comprado == e2?.comprado;
  }

  @override
  int hash(ProdutosRecord? e) =>
      const ListEquality().hash([e?.produto, e?.comprado]);

  @override
  bool isValidKey(Object? o) => o is ProdutosRecord;
}
