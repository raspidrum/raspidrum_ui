//
//  Generated code. Do not modify.
//  source: channel_control.proto
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

import 'channel_control.pb.dart' as $0;

export 'channel_control.pb.dart';

@$pb.GrpcServiceName('channelControl.v1.ChannelControl')
class ChannelControlClient extends $grpc.Client {
  static final _$setValue = $grpc.ClientMethod<$0.ControlValue, $0.ControlValue>(
      '/channelControl.v1.ChannelControl/SetValue',
      ($0.ControlValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ControlValue.fromBuffer(value));

  ChannelControlClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$0.ControlValue> setValue($async.Stream<$0.ControlValue> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$setValue, request, options: options);
  }
}

@$pb.GrpcServiceName('channelControl.v1.ChannelControl')
abstract class ChannelControlServiceBase extends $grpc.Service {
  $core.String get $name => 'channelControl.v1.ChannelControl';

  ChannelControlServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ControlValue, $0.ControlValue>(
        'SetValue',
        setValue,
        true,
        true,
        ($core.List<$core.int> value) => $0.ControlValue.fromBuffer(value),
        ($0.ControlValue value) => value.writeToBuffer()));
  }

  $async.Stream<$0.ControlValue> setValue($grpc.ServiceCall call, $async.Stream<$0.ControlValue> request);
}
