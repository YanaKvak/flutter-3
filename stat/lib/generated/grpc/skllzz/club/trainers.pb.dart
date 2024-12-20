//
//  Generated code. Do not modify.
//  source: club/trainers.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../common/common.pb.dart' as $2;

/// должность
class Position extends $pb.GeneratedMessage {
  factory Position() => create();
  Position._() : super();
  factory Position.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Position.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Position', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.skllzz.api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Position clone() => Position()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Position copyWith(void Function(Position) updates) => super.copyWith((message) => updates(message as Position)) as Position;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Position create() => Position._();
  Position createEmptyInstance() => create();
  static $pb.PbList<Position> createRepeated() => $pb.PbList<Position>();
  @$core.pragma('dart2js:noInline')
  static Position getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Position>(create);
  static Position? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);
}

/// подразделение
class Department extends $pb.GeneratedMessage {
  factory Department() => create();
  Department._() : super();
  factory Department.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Department.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Department', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.skllzz.api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Department clone() => Department()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Department copyWith(void Function(Department) updates) => super.copyWith((message) => updates(message as Department)) as Department;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Department create() => Department._();
  Department createEmptyInstance() => create();
  static $pb.PbList<Department> createRepeated() => $pb.PbList<Department>();
  @$core.pragma('dart2js:noInline')
  static Department getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Department>(create);
  static Department? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);
}

/// данные по тренеру
class TrainerInfo extends $pb.GeneratedMessage {
  factory TrainerInfo() => create();
  TrainerInfo._() : super();
  factory TrainerInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TrainerInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TrainerInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.skllzz.api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pPS(3, _omitFieldNames ? '' : 'contact')
    ..aOS(4, _omitFieldNames ? '' : 'photoUrl')
    ..aOM<Position>(5, _omitFieldNames ? '' : 'position', subBuilder: Position.create)
    ..aOM<Department>(6, _omitFieldNames ? '' : 'department', subBuilder: Department.create)
    ..aInt64(7, _omitFieldNames ? '' : 'syncSeqNo')
    ..aOS(8, _omitFieldNames ? '' : 'firstName')
    ..aOS(9, _omitFieldNames ? '' : 'lastName')
    ..aOS(10, _omitFieldNames ? '' : 'middleName')
    ..aOS(11, _omitFieldNames ? '' : 'description')
    ..m<$core.String, $core.String>(12, _omitFieldNames ? '' : 'tags', entryClassName: 'TrainerInfo.TagsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('com.skllzz.api'))
    ..aOM<$2.ImageAlign>(13, _omitFieldNames ? '' : 'photoAlign', subBuilder: $2.ImageAlign.create)
    ..pc<Department>(14, _omitFieldNames ? '' : 'departments', $pb.PbFieldType.PM, subBuilder: Department.create)
    ..aOB(999, _omitFieldNames ? '' : 'deleted')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TrainerInfo clone() => TrainerInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TrainerInfo copyWith(void Function(TrainerInfo) updates) => super.copyWith((message) => updates(message as TrainerInfo)) as TrainerInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TrainerInfo create() => TrainerInfo._();
  TrainerInfo createEmptyInstance() => create();
  static $pb.PbList<TrainerInfo> createRepeated() => $pb.PbList<TrainerInfo>();
  @$core.pragma('dart2js:noInline')
  static TrainerInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TrainerInfo>(create);
  static TrainerInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get contact => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get photoUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set photoUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPhotoUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhotoUrl() => clearField(4);

  @$pb.TagNumber(5)
  Position get position => $_getN(4);
  @$pb.TagNumber(5)
  set position(Position v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPosition() => $_has(4);
  @$pb.TagNumber(5)
  void clearPosition() => clearField(5);
  @$pb.TagNumber(5)
  Position ensurePosition() => $_ensure(4);

  @$pb.TagNumber(6)
  Department get department => $_getN(5);
  @$pb.TagNumber(6)
  set department(Department v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasDepartment() => $_has(5);
  @$pb.TagNumber(6)
  void clearDepartment() => clearField(6);
  @$pb.TagNumber(6)
  Department ensureDepartment() => $_ensure(5);

  @$pb.TagNumber(7)
  $fixnum.Int64 get syncSeqNo => $_getI64(6);
  @$pb.TagNumber(7)
  set syncSeqNo($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSyncSeqNo() => $_has(6);
  @$pb.TagNumber(7)
  void clearSyncSeqNo() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get firstName => $_getSZ(7);
  @$pb.TagNumber(8)
  set firstName($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFirstName() => $_has(7);
  @$pb.TagNumber(8)
  void clearFirstName() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get lastName => $_getSZ(8);
  @$pb.TagNumber(9)
  set lastName($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLastName() => $_has(8);
  @$pb.TagNumber(9)
  void clearLastName() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get middleName => $_getSZ(9);
  @$pb.TagNumber(10)
  set middleName($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasMiddleName() => $_has(9);
  @$pb.TagNumber(10)
  void clearMiddleName() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get description => $_getSZ(10);
  @$pb.TagNumber(11)
  set description($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasDescription() => $_has(10);
  @$pb.TagNumber(11)
  void clearDescription() => clearField(11);

  @$pb.TagNumber(12)
  $core.Map<$core.String, $core.String> get tags => $_getMap(11);

  @$pb.TagNumber(13)
  $2.ImageAlign get photoAlign => $_getN(12);
  @$pb.TagNumber(13)
  set photoAlign($2.ImageAlign v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasPhotoAlign() => $_has(12);
  @$pb.TagNumber(13)
  void clearPhotoAlign() => clearField(13);
  @$pb.TagNumber(13)
  $2.ImageAlign ensurePhotoAlign() => $_ensure(12);

  @$pb.TagNumber(14)
  $core.List<Department> get departments => $_getList(13);

  @$pb.TagNumber(999)
  $core.bool get deleted => $_getBF(14);
  @$pb.TagNumber(999)
  set deleted($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(999)
  $core.bool hasDeleted() => $_has(14);
  @$pb.TagNumber(999)
  void clearDeleted() => clearField(999);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
