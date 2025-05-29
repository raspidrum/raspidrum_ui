//
//  Generated code. Do not modify.
//  source: preset.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'preset.pb.dart' as $0;

export 'preset.pb.dart';

@$pb.GrpcServiceName('kitPreset.v1.KitPreset')
class KitPresetClient extends $grpc.Client {
  static final _$loadPreset = $grpc.ClientMethod<$0.LoadPresetRequest, $0.LoadPresetResponse>(
      '/kitPreset.v1.KitPreset/LoadPreset',
      ($0.LoadPresetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LoadPresetResponse.fromBuffer(value));

  KitPresetClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.LoadPresetResponse> loadPreset($0.LoadPresetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$loadPreset, request, options: options);
  }
}

@$pb.GrpcServiceName('kitPreset.v1.KitPreset')
abstract class KitPresetServiceBase extends $grpc.Service {
  $core.String get $name => 'kitPreset.v1.KitPreset';

  KitPresetServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LoadPresetRequest, $0.LoadPresetResponse>(
        'LoadPreset',
        loadPreset_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoadPresetRequest.fromBuffer(value),
        ($0.LoadPresetResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.LoadPresetResponse> loadPreset_Pre($grpc.ServiceCall call, $async.Future<$0.LoadPresetRequest> request) async {
    return loadPreset(call, await request);
  }

  $async.Future<$0.LoadPresetResponse> loadPreset($grpc.ServiceCall call, $0.LoadPresetRequest request);
}
