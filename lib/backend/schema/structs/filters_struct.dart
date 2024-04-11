// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FiltersStruct extends BaseStruct {
  FiltersStruct({
    bool? archieved,
  }) : _archieved = archieved;

  // "archieved" field.
  bool? _archieved;
  bool get archieved => _archieved ?? false;
  set archieved(bool? val) => _archieved = val;
  bool hasArchieved() => _archieved != null;

  static FiltersStruct fromMap(Map<String, dynamic> data) => FiltersStruct(
        archieved: data['archieved'] as bool?,
      );

  static FiltersStruct? maybeFromMap(dynamic data) =>
      data is Map ? FiltersStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'archieved': _archieved,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'archieved': serializeParam(
          _archieved,
          ParamType.bool,
        ),
      }.withoutNulls;

  static FiltersStruct fromSerializableMap(Map<String, dynamic> data) =>
      FiltersStruct(
        archieved: deserializeParam(
          data['archieved'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'FiltersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FiltersStruct && archieved == other.archieved;
  }

  @override
  int get hashCode => const ListEquality().hash([archieved]);
}

FiltersStruct createFiltersStruct({
  bool? archieved,
}) =>
    FiltersStruct(
      archieved: archieved,
    );
