//
//  Generated code. Do not modify.
//  source: club/trainers.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use positionDescriptor instead')
const Position$json = {
  '1': 'Position',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
  ],
};

/// Descriptor for `Position`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List positionDescriptor = $convert.base64Decode(
    'CghQb3NpdGlvbhIOCgJpZBgBIAEoCVICaWQSFAoFdGl0bGUYAiABKAlSBXRpdGxl');

@$core.Deprecated('Use departmentDescriptor instead')
const Department$json = {
  '1': 'Department',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
  ],
};

/// Descriptor for `Department`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List departmentDescriptor = $convert.base64Decode(
    'CgpEZXBhcnRtZW50Eg4KAmlkGAEgASgJUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGU=');

@$core.Deprecated('Use trainerInfoDescriptor instead')
const TrainerInfo$json = {
  '1': 'TrainerInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'contact', '3': 3, '4': 3, '5': 9, '10': 'contact'},
    {'1': 'photo_url', '3': 4, '4': 1, '5': 9, '10': 'photoUrl'},
    {'1': 'position', '3': 5, '4': 1, '5': 11, '6': '.com.skllzz.api.Position', '10': 'position'},
    {'1': 'department', '3': 6, '4': 1, '5': 11, '6': '.com.skllzz.api.Department', '10': 'department'},
    {'1': 'sync_seq_no', '3': 7, '4': 1, '5': 3, '10': 'syncSeqNo'},
    {'1': 'first_name', '3': 8, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'last_name', '3': 9, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'middle_name', '3': 10, '4': 1, '5': 9, '10': 'middleName'},
    {'1': 'description', '3': 11, '4': 1, '5': 9, '10': 'description'},
    {'1': 'tags', '3': 12, '4': 3, '5': 11, '6': '.com.skllzz.api.TrainerInfo.TagsEntry', '10': 'tags'},
    {'1': 'photo_align', '3': 13, '4': 1, '5': 11, '6': '.com.skllzz.api.ImageAlign', '10': 'photoAlign'},
    {'1': 'departments', '3': 14, '4': 3, '5': 11, '6': '.com.skllzz.api.Department', '10': 'departments'},
    {'1': 'deleted', '3': 999, '4': 1, '5': 8, '10': 'deleted'},
  ],
  '3': [TrainerInfo_TagsEntry$json],
};

@$core.Deprecated('Use trainerInfoDescriptor instead')
const TrainerInfo_TagsEntry$json = {
  '1': 'TagsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `TrainerInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List trainerInfoDescriptor = $convert.base64Decode(
    'CgtUcmFpbmVySW5mbxIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIYCgdjb2'
    '50YWN0GAMgAygJUgdjb250YWN0EhsKCXBob3RvX3VybBgEIAEoCVIIcGhvdG9VcmwSNAoIcG9z'
    'aXRpb24YBSABKAsyGC5jb20uc2tsbHp6LmFwaS5Qb3NpdGlvblIIcG9zaXRpb24SOgoKZGVwYX'
    'J0bWVudBgGIAEoCzIaLmNvbS5za2xsenouYXBpLkRlcGFydG1lbnRSCmRlcGFydG1lbnQSHgoL'
    'c3luY19zZXFfbm8YByABKANSCXN5bmNTZXFObxIdCgpmaXJzdF9uYW1lGAggASgJUglmaXJzdE'
    '5hbWUSGwoJbGFzdF9uYW1lGAkgASgJUghsYXN0TmFtZRIfCgttaWRkbGVfbmFtZRgKIAEoCVIK'
    'bWlkZGxlTmFtZRIgCgtkZXNjcmlwdGlvbhgLIAEoCVILZGVzY3JpcHRpb24SOQoEdGFncxgMIA'
    'MoCzIlLmNvbS5za2xsenouYXBpLlRyYWluZXJJbmZvLlRhZ3NFbnRyeVIEdGFncxI7CgtwaG90'
    'b19hbGlnbhgNIAEoCzIaLmNvbS5za2xsenouYXBpLkltYWdlQWxpZ25SCnBob3RvQWxpZ24SPA'
    'oLZGVwYXJ0bWVudHMYDiADKAsyGi5jb20uc2tsbHp6LmFwaS5EZXBhcnRtZW50UgtkZXBhcnRt'
    'ZW50cxIZCgdkZWxldGVkGOcHIAEoCFIHZGVsZXRlZBo3CglUYWdzRW50cnkSEAoDa2V5GAEgAS'
    'gJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

